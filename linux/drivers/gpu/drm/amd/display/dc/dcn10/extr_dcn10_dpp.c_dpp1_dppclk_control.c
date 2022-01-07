
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpp {int dummy; } ;
struct dcn10_dpp {TYPE_1__* tf_mask; } ;
struct TYPE_2__ {scalar_t__ DPPCLK_RATE_CONTROL; } ;


 int DPPCLK_RATE_CONTROL ;
 int DPP_CLOCK_ENABLE ;
 int DPP_CONTROL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_dppclk_control(
  struct dpp *dpp_base,
  bool dppclk_div,
  bool enable)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 if (enable) {
  if (dpp->tf_mask->DPPCLK_RATE_CONTROL)
   REG_UPDATE_2(DPP_CONTROL,
    DPPCLK_RATE_CONTROL, dppclk_div,
    DPP_CLOCK_ENABLE, 1);
  else
   REG_UPDATE(DPP_CONTROL, DPP_CLOCK_ENABLE, 1);
 } else
  REG_UPDATE(DPP_CONTROL, DPP_CLOCK_ENABLE, 0);
}
