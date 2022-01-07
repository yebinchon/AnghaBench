
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {scalar_t__ base; } ;


 scalar_t__ LRADC_CTRL1 ;
 int LRADC_CTRL1_LRADC_IRQ_EN (int ) ;
 int LRADC_CTRL1_TOUCH_DETECT_IRQ_EN ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int TOUCHSCREEN_VCHANNEL1 ;
 int mxs_lradc_prepare_y_pos (struct mxs_lradc_ts*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_start_touch_event(struct mxs_lradc_ts *ts)
{
 writel(LRADC_CTRL1_TOUCH_DETECT_IRQ_EN,
        ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
 writel(LRADC_CTRL1_LRADC_IRQ_EN(TOUCHSCREEN_VCHANNEL1),
        ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_SET);




 mxs_lradc_prepare_y_pos(ts);
}
