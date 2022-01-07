
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;


 int * MPCC_MEM_PWR_CTRL ;
 int MPCC_OGAM_MEM_PWR_DIS ;
 int REG_SET (int ,int ,int ,int) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

void mpc20_power_on_ogam_lut(
  struct mpc *mpc, int mpcc_id,
  bool power_on)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);

 REG_SET(MPCC_MEM_PWR_CTRL[mpcc_id], 0,
   MPCC_OGAM_MEM_PWR_DIS, power_on == 1 ? 1:0);

}
