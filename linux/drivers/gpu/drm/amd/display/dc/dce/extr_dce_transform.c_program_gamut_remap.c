
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dce_transform {int dummy; } ;


 int GAMUT_REMAP_C11 ;
 int GAMUT_REMAP_C11_C12 ;
 int GAMUT_REMAP_C12 ;
 int GAMUT_REMAP_C13 ;
 int GAMUT_REMAP_C13_C14 ;
 int GAMUT_REMAP_C14 ;
 int GAMUT_REMAP_C21 ;
 int GAMUT_REMAP_C21_C22 ;
 int GAMUT_REMAP_C22 ;
 int GAMUT_REMAP_C23 ;
 int GAMUT_REMAP_C23_C24 ;
 int GAMUT_REMAP_C24 ;
 int GAMUT_REMAP_C31 ;
 int GAMUT_REMAP_C31_C32 ;
 int GAMUT_REMAP_C32 ;
 int GAMUT_REMAP_C33 ;
 int GAMUT_REMAP_C33_C34 ;
 int GAMUT_REMAP_C34 ;
 int GAMUT_REMAP_CONTROL ;
 int GRPH_GAMUT_REMAP_MODE ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int const,int ,int const) ;

__attribute__((used)) static void program_gamut_remap(
 struct dce_transform *xfm_dce,
 const uint16_t *reg_val)
{
 if (reg_val) {
  REG_SET_2(GAMUT_REMAP_C11_C12, 0,
    GAMUT_REMAP_C11, reg_val[0],
    GAMUT_REMAP_C12, reg_val[1]);
  REG_SET_2(GAMUT_REMAP_C13_C14, 0,
    GAMUT_REMAP_C13, reg_val[2],
    GAMUT_REMAP_C14, reg_val[3]);
  REG_SET_2(GAMUT_REMAP_C21_C22, 0,
    GAMUT_REMAP_C21, reg_val[4],
    GAMUT_REMAP_C22, reg_val[5]);
  REG_SET_2(GAMUT_REMAP_C23_C24, 0,
    GAMUT_REMAP_C23, reg_val[6],
    GAMUT_REMAP_C24, reg_val[7]);
  REG_SET_2(GAMUT_REMAP_C31_C32, 0,
    GAMUT_REMAP_C31, reg_val[8],
    GAMUT_REMAP_C32, reg_val[9]);
  REG_SET_2(GAMUT_REMAP_C33_C34, 0,
    GAMUT_REMAP_C33, reg_val[10],
    GAMUT_REMAP_C34, reg_val[11]);

  REG_SET(GAMUT_REMAP_CONTROL, 0, GRPH_GAMUT_REMAP_MODE, 1);
 } else
  REG_SET(GAMUT_REMAP_CONTROL, 0, GRPH_GAMUT_REMAP_MODE, 0);

}
