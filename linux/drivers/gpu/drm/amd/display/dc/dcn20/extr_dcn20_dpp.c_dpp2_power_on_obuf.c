
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;


 int CM_MEM_PWR_CTRL ;
 int DSCL_MEM_PWR_CTRL ;
 int LUT_MEM_PWR_FORCE ;
 int OBUF_MEM_PWR_CTRL ;
 int OBUF_MEM_PWR_FORCE ;
 int REG_UPDATE (int ,int ,int) ;
 int SHARED_MEM_PWR_DIS ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

void dpp2_power_on_obuf(
  struct dpp *dpp_base,
 bool power_on)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_UPDATE(CM_MEM_PWR_CTRL, SHARED_MEM_PWR_DIS, power_on == 1 ? 1:0);

 REG_UPDATE(OBUF_MEM_PWR_CTRL,
   OBUF_MEM_PWR_FORCE, power_on == 1 ? 0:1);

 REG_UPDATE(DSCL_MEM_PWR_CTRL,
   LUT_MEM_PWR_FORCE, power_on == 1 ? 0:1);
}
