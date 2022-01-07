
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {int cur_plate; int ts_pressure; void* ts_x_pos; void* ts_y_pos; scalar_t__ base; } ;


 scalar_t__ LRADC_CTRL1 ;
 int LRADC_CTRL1_TOUCH_DETECT_IRQ ;





 scalar_t__ STMP_OFFSET_REG_CLR ;
 int TOUCHSCREEN_VCHANNEL1 ;
 int TOUCHSCREEN_VCHANNEL2 ;
 int mxs_lradc_check_touch_event (struct mxs_lradc_ts*) ;
 int mxs_lradc_complete_touch_event (struct mxs_lradc_ts*) ;
 int mxs_lradc_finish_touch_event (struct mxs_lradc_ts*,int) ;
 int mxs_lradc_prepare_pressure (struct mxs_lradc_ts*) ;
 int mxs_lradc_prepare_x_pos (struct mxs_lradc_ts*) ;
 int mxs_lradc_read_ts_pressure (struct mxs_lradc_ts*,int ,int ) ;
 int mxs_lradc_start_touch_event (struct mxs_lradc_ts*) ;
 void* mxs_lradc_ts_read_raw_channel (struct mxs_lradc_ts*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_handle_touch(struct mxs_lradc_ts *ts)
{
 switch (ts->cur_plate) {
 case 128:
  if (mxs_lradc_check_touch_event(ts))
   mxs_lradc_start_touch_event(ts);
  writel(LRADC_CTRL1_TOUCH_DETECT_IRQ,
         ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
  return;

 case 129:
  ts->ts_y_pos =
      mxs_lradc_ts_read_raw_channel(ts, TOUCHSCREEN_VCHANNEL1);
  mxs_lradc_prepare_x_pos(ts);
  return;

 case 130:
  ts->ts_x_pos =
      mxs_lradc_ts_read_raw_channel(ts, TOUCHSCREEN_VCHANNEL1);
  mxs_lradc_prepare_pressure(ts);
  return;

 case 132:
  ts->ts_pressure =
      mxs_lradc_read_ts_pressure(ts,
            TOUCHSCREEN_VCHANNEL2,
            TOUCHSCREEN_VCHANNEL1);
  mxs_lradc_complete_touch_event(ts);
  return;

 case 131:
  mxs_lradc_finish_touch_event(ts, 1);
  break;
 }
}
