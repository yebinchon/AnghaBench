
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct jornada_ts {int y_data; int x_data; int gpio; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int GETTOUCHSAMPLES ;
 int IRQ_HANDLED ;
 scalar_t__ TXDUMMY ;
 scalar_t__ gpiod_get_value (int ) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int jornada720_ts_average (int ) ;
 int jornada720_ts_collect_data (struct jornada_ts*) ;
 int jornada_ssp_end () ;
 scalar_t__ jornada_ssp_inout (int ) ;
 int jornada_ssp_start () ;
 struct jornada_ts* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static irqreturn_t jornada720_ts_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;
 struct jornada_ts *jornada_ts = platform_get_drvdata(pdev);
 struct input_dev *input = jornada_ts->dev;
 int x, y;


 if (gpiod_get_value(jornada_ts->gpio)) {
  input_report_key(input, BTN_TOUCH, 0);
  input_sync(input);
 } else {
  jornada_ssp_start();


  if (jornada_ssp_inout(GETTOUCHSAMPLES) == TXDUMMY) {
   jornada720_ts_collect_data(jornada_ts);

   x = jornada720_ts_average(jornada_ts->x_data);
   y = jornada720_ts_average(jornada_ts->y_data);

   input_report_key(input, BTN_TOUCH, 1);
   input_report_abs(input, ABS_X, x);
   input_report_abs(input, ABS_Y, y);
   input_sync(input);
  }

  jornada_ssp_end();
 }

 return IRQ_HANDLED;
}
