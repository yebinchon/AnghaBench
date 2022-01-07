
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {scalar_t__ base; int cur_plate; } ;


 scalar_t__ LRADC_CTRL1 ;
 int LRADC_CTRL1_TOUCH_DETECT_IRQ ;
 int LRADC_CTRL1_TOUCH_DETECT_IRQ_EN ;
 int LRADC_TOUCH ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int mxs_lradc_setup_touch_detection (struct mxs_lradc_ts*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_enable_touch_detection(struct mxs_lradc_ts *ts)
{
 mxs_lradc_setup_touch_detection(ts);

 ts->cur_plate = LRADC_TOUCH;
 writel(LRADC_CTRL1_TOUCH_DETECT_IRQ | LRADC_CTRL1_TOUCH_DETECT_IRQ_EN,
        ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
 writel(LRADC_CTRL1_TOUCH_DETECT_IRQ_EN,
        ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_SET);
}
