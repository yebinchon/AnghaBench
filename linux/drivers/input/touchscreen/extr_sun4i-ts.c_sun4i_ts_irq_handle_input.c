
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_ts_data {int ignore_fifo_data; int input; scalar_t__ base; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int FIFO_DATA_PENDING ;
 scalar_t__ TP_DATA ;
 int TP_UP_PENDING ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void sun4i_ts_irq_handle_input(struct sun4i_ts_data *ts, u32 reg_val)
{
 u32 x, y;

 if (reg_val & FIFO_DATA_PENDING) {
  x = readl(ts->base + TP_DATA);
  y = readl(ts->base + TP_DATA);

  if (!ts->ignore_fifo_data) {
   input_report_abs(ts->input, ABS_X, x);
   input_report_abs(ts->input, ABS_Y, y);





   input_report_key(ts->input, BTN_TOUCH, 1);
   input_sync(ts->input);
  } else {
   ts->ignore_fifo_data = 0;
  }
 }

 if (reg_val & TP_UP_PENDING) {
  ts->ignore_fifo_data = 1;
  input_report_key(ts->input, BTN_TOUCH, 0);
  input_sync(ts->input);
 }
}
