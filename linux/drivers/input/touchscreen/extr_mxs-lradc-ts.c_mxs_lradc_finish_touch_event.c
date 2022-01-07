
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {int ts_valid; scalar_t__ base; int cur_plate; int ts_input; } ;


 int BTN_TOUCH ;
 scalar_t__ LRADC_CTRL1 ;
 int LRADC_CTRL1_LRADC_IRQ (int ) ;
 int LRADC_CTRL1_LRADC_IRQ_EN (int ) ;
 int LRADC_CTRL1_TOUCH_DETECT_IRQ ;
 int LRADC_CTRL1_TOUCH_DETECT_IRQ_EN ;
 scalar_t__ LRADC_DELAY (int) ;
 int LRADC_TOUCH ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int TOUCHSCREEN_VCHANNEL1 ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 scalar_t__ mxs_lradc_check_touch_event (struct mxs_lradc_ts*) ;
 int mxs_lradc_prepare_y_pos (struct mxs_lradc_ts*) ;
 int mxs_lradc_report_ts_event (struct mxs_lradc_ts*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_finish_touch_event(struct mxs_lradc_ts *ts, bool valid)
{

 if (valid && mxs_lradc_check_touch_event(ts)) {
  ts->ts_valid = 1;
  mxs_lradc_report_ts_event(ts);
 }


 if (mxs_lradc_check_touch_event(ts)) {
  mxs_lradc_prepare_y_pos(ts);
  return;
 }

 if (ts->ts_valid) {

  ts->ts_valid = 0;
  input_report_key(ts->ts_input, BTN_TOUCH, 0);
  input_sync(ts->ts_input);
 }


 ts->cur_plate = LRADC_TOUCH;
 writel(0, ts->base + LRADC_DELAY(2));
 writel(0, ts->base + LRADC_DELAY(3));
 writel(LRADC_CTRL1_TOUCH_DETECT_IRQ |
        LRADC_CTRL1_LRADC_IRQ_EN(TOUCHSCREEN_VCHANNEL1) |
        LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1),
        ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
 writel(LRADC_CTRL1_TOUCH_DETECT_IRQ_EN,
        ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_SET);
}
