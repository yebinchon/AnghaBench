
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;


 int * MPCC_OGAM_LUT_INDEX ;
 int * MPCC_OGAM_LUT_RAM_CONTROL ;
 int MPCC_OGAM_LUT_RAM_SEL ;
 int MPCC_OGAM_LUT_WRITE_EN_MASK ;
 int REG_SET (int ,int ,int *,int ) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

__attribute__((used)) static void mpc20_configure_ogam_lut(
  struct mpc *mpc, int mpcc_id,
  bool is_ram_a)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);

 REG_UPDATE_2(MPCC_OGAM_LUT_RAM_CONTROL[mpcc_id],
   MPCC_OGAM_LUT_WRITE_EN_MASK, 7,
   MPCC_OGAM_LUT_RAM_SEL, is_ram_a == 1 ? 0:1);

 REG_SET(MPCC_OGAM_LUT_INDEX[mpcc_id], 0, MPCC_OGAM_LUT_INDEX, 0);
}
