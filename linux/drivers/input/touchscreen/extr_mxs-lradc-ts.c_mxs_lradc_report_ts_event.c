
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {int ts_input; int ts_pressure; int ts_y_pos; int ts_x_pos; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void mxs_lradc_report_ts_event(struct mxs_lradc_ts *ts)
{
 input_report_abs(ts->ts_input, ABS_X, ts->ts_x_pos);
 input_report_abs(ts->ts_input, ABS_Y, ts->ts_y_pos);
 input_report_abs(ts->ts_input, ABS_PRESSURE, ts->ts_pressure);
 input_report_key(ts->ts_input, BTN_TOUCH, 1);
 input_sync(ts->ts_input);
}
