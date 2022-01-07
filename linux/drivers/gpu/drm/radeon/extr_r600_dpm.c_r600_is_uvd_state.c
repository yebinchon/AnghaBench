
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ATOM_PPLIB_CLASSIFICATION2_MVC ;
 int ATOM_PPLIB_CLASSIFICATION_HD2STATE ;
 int ATOM_PPLIB_CLASSIFICATION_HDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_SDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_UVDSTATE ;

bool r600_is_uvd_state(u32 class, u32 class2)
{
 if (class & ATOM_PPLIB_CLASSIFICATION_UVDSTATE)
  return 1;
 if (class & ATOM_PPLIB_CLASSIFICATION_HD2STATE)
  return 1;
 if (class & ATOM_PPLIB_CLASSIFICATION_HDSTATE)
  return 1;
 if (class & ATOM_PPLIB_CLASSIFICATION_SDSTATE)
  return 1;
 if (class2 & ATOM_PPLIB_CLASSIFICATION2_MVC)
  return 1;
 return 0;
}
