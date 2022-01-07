
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transform {int dummy; } ;
struct dce_transform {int dummy; } ;


 int DCFE_MEM_LIGHT_SLEEP_CNTL ;
 int DCFE_MEM_PWR_CTRL ;
 int DCP_LUT_LIGHT_SLEEP_DIS ;
 int DCP_LUT_MEM_PWR_DIS ;
 int DCP_REGAMMA_MEM_PWR_DIS ;
 scalar_t__ REG (int ) ;
 int REGAMMA_LUT_LIGHT_SLEEP_DIS ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;

void dce110_opp_power_on_regamma_lut(struct transform *xfm,
         bool power_on)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);

 if (REG(DCFE_MEM_PWR_CTRL))
  REG_UPDATE_2(DCFE_MEM_PWR_CTRL,
        DCP_REGAMMA_MEM_PWR_DIS, power_on,
        DCP_LUT_MEM_PWR_DIS, power_on);
 else
  REG_UPDATE_2(DCFE_MEM_LIGHT_SLEEP_CNTL,
       REGAMMA_LUT_LIGHT_SLEEP_DIS, power_on,
       DCP_LUT_LIGHT_SLEEP_DIS, power_on);

}
