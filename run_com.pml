#This is a PyMol script to calculate distance between center of mass of two proteins from a set of selected residues. 

#usage: pymol run_com.pml

#Note that you will need to have center_of_mass.py in the same directory to impor center_of_mass module.

#downloading pdb file
fetch 1lyn, type=pdb

#loanding your pdb
#load 1lyn.pdb

#removing heteroatoms
remove het

#importing center_of_mass library
import center_of_mass

#selecting residues for center-of-mass calculation
select 1, i. 54+96 and (not chain B)

#calculating center of mass
com 1, state=1

#selecting residues for center-of-mass calculation
select 2, i. 78+80 and (not chain A)

#calculating center of mass
com 2, state=1

#calculanting distances between centers
get_distance 1_COM, 2_COM


