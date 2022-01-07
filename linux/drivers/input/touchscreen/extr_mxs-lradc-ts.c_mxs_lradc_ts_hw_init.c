
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {scalar_t__ base; struct mxs_lradc* lradc; } ;
struct mxs_lradc {scalar_t__ soc; scalar_t__ touchscreen_wire; } ;


 scalar_t__ IMX28_LRADC ;
 scalar_t__ LRADC_CTRL0 ;
 int LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE ;
 scalar_t__ MXS_LRADC_TOUCHSCREEN_5WIRE ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_ts_hw_init(struct mxs_lradc_ts *ts)
{
 struct mxs_lradc *lradc = ts->lradc;


 if (lradc->soc == IMX28_LRADC) {
  writel(LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE,
         ts->base + LRADC_CTRL0 + STMP_OFFSET_REG_CLR);

  if (lradc->touchscreen_wire == MXS_LRADC_TOUCHSCREEN_5WIRE)
   writel(LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE,
          ts->base + LRADC_CTRL0 + STMP_OFFSET_REG_SET);
 }
}
