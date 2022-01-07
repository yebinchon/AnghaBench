
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ts4800_ts {int pendown; scalar_t__ debounce; scalar_t__ base; } ;
struct input_polled_dev {struct ts4800_ts* private; struct input_dev* input; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ DEBOUNCE_COUNT ;
 int MAX_12BIT ;
 int PENDOWN_MASK ;
 scalar_t__ X_OFFSET ;
 scalar_t__ Y_OFFSET ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int readw (scalar_t__) ;

__attribute__((used)) static void ts4800_ts_poll(struct input_polled_dev *dev)
{
 struct input_dev *input_dev = dev->input;
 struct ts4800_ts *ts = dev->private;
 u16 last_x = readw(ts->base + X_OFFSET);
 u16 last_y = readw(ts->base + Y_OFFSET);
 bool pendown = last_x & PENDOWN_MASK;

 if (pendown) {
  if (ts->debounce) {
   ts->debounce--;
   return;
  }

  if (!ts->pendown) {
   input_report_key(input_dev, BTN_TOUCH, 1);
   ts->pendown = 1;
  }

  last_x = ((~last_x) >> 4) & MAX_12BIT;
  last_y = ((~last_y) >> 4) & MAX_12BIT;

  input_report_abs(input_dev, ABS_X, last_x);
  input_report_abs(input_dev, ABS_Y, last_y);
  input_sync(input_dev);
 } else if (ts->pendown) {
  ts->pendown = 0;
  ts->debounce = DEBOUNCE_COUNT;
  input_report_key(input_dev, BTN_TOUCH, 0);
  input_sync(input_dev);
 }
}
