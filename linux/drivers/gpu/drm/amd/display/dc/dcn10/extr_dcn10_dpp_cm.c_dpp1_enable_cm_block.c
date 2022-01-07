
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 int CM_BYPASS_EN ;
 int CM_CMOUT_CONTROL ;
 int CM_CMOUT_ROUND_TRUNC_MODE ;
 int CM_CONTROL ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

__attribute__((used)) static void dpp1_enable_cm_block(
  struct dpp *dpp_base)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 REG_UPDATE(CM_CMOUT_CONTROL, CM_CMOUT_ROUND_TRUNC_MODE, 8);
 REG_UPDATE(CM_CONTROL, CM_BYPASS_EN, 0);
}
