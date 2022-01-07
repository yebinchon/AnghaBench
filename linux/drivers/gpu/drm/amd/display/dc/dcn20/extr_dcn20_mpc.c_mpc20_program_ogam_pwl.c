
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pwl_result_data {int delta_blue_reg; int delta_green_reg; int delta_red_reg; int blue_reg; int green_reg; int red_reg; } ;
struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;


 int * MPCC_OGAM_LUT_DATA ;
 int REG_SET (int ,int ,int *,int ) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

__attribute__((used)) static void mpc20_program_ogam_pwl(
  struct mpc *mpc, int mpcc_id,
  const struct pwl_result_data *rgb,
  uint32_t num)
{
 uint32_t i;
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);

 for (i = 0 ; i < num; i++) {
  REG_SET(MPCC_OGAM_LUT_DATA[mpcc_id], 0, MPCC_OGAM_LUT_DATA, rgb[i].red_reg);
  REG_SET(MPCC_OGAM_LUT_DATA[mpcc_id], 0, MPCC_OGAM_LUT_DATA, rgb[i].green_reg);
  REG_SET(MPCC_OGAM_LUT_DATA[mpcc_id], 0, MPCC_OGAM_LUT_DATA, rgb[i].blue_reg);

  REG_SET(MPCC_OGAM_LUT_DATA[mpcc_id], 0,
    MPCC_OGAM_LUT_DATA, rgb[i].delta_red_reg);
  REG_SET(MPCC_OGAM_LUT_DATA[mpcc_id], 0,
    MPCC_OGAM_LUT_DATA, rgb[i].delta_green_reg);
  REG_SET(MPCC_OGAM_LUT_DATA[mpcc_id], 0,
    MPCC_OGAM_LUT_DATA, rgb[i].delta_blue_reg);

 }

}
