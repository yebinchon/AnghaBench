
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;


 int BLNDGAM_MEM_PWR_FORCE ;
 int CM_MEM_PWR_CTRL ;
 int REG_SET (int ,int ,int ,int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp20_power_on_blnd_lut(
 struct dpp *dpp_base,
 bool power_on)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_SET(CM_MEM_PWR_CTRL, 0,
   BLNDGAM_MEM_PWR_FORCE, power_on == 1 ? 0:1);

}
