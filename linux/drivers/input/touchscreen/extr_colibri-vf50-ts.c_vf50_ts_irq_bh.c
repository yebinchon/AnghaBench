
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vf50_touch_device {int min_pressure; int ts_input; int gpio_xm; int gpio_yp; int * channels; int gpio_ym; int gpio_xp; int stop_touchscreen; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int COLI_PULLUP_MAX_DELAY_US ;
 int COLI_PULLUP_MIN_DELAY_US ;
 int IRQ_HANDLED ;
 int VF_ADC_MAX ;
 int adc_ts_measure (int *,int ,int ) ;
 int dev_dbg (struct device*,char*,int,int,int,int,int) ;
 int gpiod_set_value (int ,int ) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pinctrl_pm_select_default_state (struct device*) ;
 int usleep_range (int ,int ) ;
 int vf50_ts_enable_touch_detection (struct vf50_touch_device*) ;

__attribute__((used)) static irqreturn_t vf50_ts_irq_bh(int irq, void *private)
{
 struct vf50_touch_device *vf50_ts = private;
 struct device *dev = &vf50_ts->pdev->dev;
 int val_x, val_y, val_z1, val_z2, val_p = 0;
 bool discard_val_on_start = 1;


 gpiod_set_value(vf50_ts->gpio_ym, 0);


 pinctrl_pm_select_default_state(dev);

 while (!vf50_ts->stop_touchscreen) {

  val_x = adc_ts_measure(&vf50_ts->channels[0],
    vf50_ts->gpio_xp, vf50_ts->gpio_xm);
  if (val_x < 0)
   break;


  val_y = adc_ts_measure(&vf50_ts->channels[1],
    vf50_ts->gpio_yp, vf50_ts->gpio_ym);
  if (val_y < 0)
   break;





  val_z1 = adc_ts_measure(&vf50_ts->channels[2],
    vf50_ts->gpio_yp, vf50_ts->gpio_xm);
  if (val_z1 < 0)
   break;
  val_z2 = adc_ts_measure(&vf50_ts->channels[3],
    vf50_ts->gpio_yp, vf50_ts->gpio_xm);
  if (val_z2 < 0)
   break;


  if (val_z1 > 64 && val_x > 64) {




   int r_x = (1000 * val_x) / VF_ADC_MAX;

   val_p = (r_x * val_z2) / val_z1 - r_x;

  } else {
   val_p = 2000;
  }

  val_p = 2000 - val_p;
  dev_dbg(dev,
   "Measured values: x: %d, y: %d, z1: %d, z2: %d, p: %d\n",
   val_x, val_y, val_z1, val_z2, val_p);





  if (val_p < vf50_ts->min_pressure || val_p > 2000)
   break;







  if (discard_val_on_start) {
   discard_val_on_start = 0;
  } else {




   input_report_abs(vf50_ts->ts_input,
     ABS_X, VF_ADC_MAX - val_x);
   input_report_abs(vf50_ts->ts_input,
     ABS_Y, VF_ADC_MAX - val_y);
   input_report_abs(vf50_ts->ts_input,
     ABS_PRESSURE, val_p);
   input_report_key(vf50_ts->ts_input, BTN_TOUCH, 1);
   input_sync(vf50_ts->ts_input);
  }

  usleep_range(COLI_PULLUP_MIN_DELAY_US,
        COLI_PULLUP_MAX_DELAY_US);
 }


 input_report_abs(vf50_ts->ts_input, ABS_PRESSURE, 0);
 input_report_key(vf50_ts->ts_input, BTN_TOUCH, 0);
 input_sync(vf50_ts->ts_input);

 vf50_ts_enable_touch_detection(vf50_ts);

 return IRQ_HANDLED;
}
