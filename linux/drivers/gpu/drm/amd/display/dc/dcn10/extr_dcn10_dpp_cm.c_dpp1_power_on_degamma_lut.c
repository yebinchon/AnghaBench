
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 int CM_MEM_PWR_CTRL ;
 int REG_SET (int ,int ,int ,int) ;
 int SHARED_MEM_PWR_DIS ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_power_on_degamma_lut(
  struct dpp *dpp_base,
 bool power_on)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 REG_SET(CM_MEM_PWR_CTRL, 0,
   SHARED_MEM_PWR_DIS, power_on == 1 ? 0:1);

}
