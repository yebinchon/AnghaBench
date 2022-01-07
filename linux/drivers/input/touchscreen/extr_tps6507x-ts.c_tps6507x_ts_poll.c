
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pressure; scalar_t__ x; scalar_t__ y; } ;
struct tps6507x_ts {scalar_t__ min_pressure; int pendown; TYPE_1__ tc; int dev; } ;
struct input_polled_dev {struct input_dev* input; struct tps6507x_ts* private; } ;
struct input_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int TPS6507X_TSCMODE_PRESSURE ;
 int TPS6507X_TSCMODE_X_POSITION ;
 int TPS6507X_TSCMODE_Y_POSITION ;
 int dev_dbg (int ,char*) ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ tps6507x_adc_conversion (struct tps6507x_ts*,int ,scalar_t__*) ;
 int tps6507x_adc_standby (struct tps6507x_ts*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tps6507x_ts_poll(struct input_polled_dev *poll_dev)
{
 struct tps6507x_ts *tsc = poll_dev->private;
 struct input_dev *input_dev = poll_dev->input;
 bool pendown;
 s32 ret;

 ret = tps6507x_adc_conversion(tsc, TPS6507X_TSCMODE_PRESSURE,
          &tsc->tc.pressure);
 if (ret)
  goto done;

 pendown = tsc->tc.pressure > tsc->min_pressure;

 if (unlikely(!pendown && tsc->pendown)) {
  dev_dbg(tsc->dev, "UP\n");
  input_report_key(input_dev, BTN_TOUCH, 0);
  input_report_abs(input_dev, ABS_PRESSURE, 0);
  input_sync(input_dev);
  tsc->pendown = 0;
 }

 if (pendown) {

  if (!tsc->pendown) {
   dev_dbg(tsc->dev, "DOWN\n");
   input_report_key(input_dev, BTN_TOUCH, 1);
  } else
   dev_dbg(tsc->dev, "still down\n");

  ret = tps6507x_adc_conversion(tsc, TPS6507X_TSCMODE_X_POSITION,
            &tsc->tc.x);
  if (ret)
   goto done;

  ret = tps6507x_adc_conversion(tsc, TPS6507X_TSCMODE_Y_POSITION,
            &tsc->tc.y);
  if (ret)
   goto done;

  input_report_abs(input_dev, ABS_X, tsc->tc.x);
  input_report_abs(input_dev, ABS_Y, tsc->tc.y);
  input_report_abs(input_dev, ABS_PRESSURE, tsc->tc.pressure);
  input_sync(input_dev);
  tsc->pendown = 1;
 }

done:
 tps6507x_adc_standby(tsc);
}
