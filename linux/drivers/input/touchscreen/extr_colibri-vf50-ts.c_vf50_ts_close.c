
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vf50_touch_device {int stop_touchscreen; int gpio_ym; int pen_irq; TYPE_1__* pdev; } ;
struct input_dev {int name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_dbg (struct device*,char*,int ) ;
 int gpiod_set_value (int ,int ) ;
 struct vf50_touch_device* input_get_drvdata (struct input_dev*) ;
 int mb () ;
 int pinctrl_pm_select_default_state (struct device*) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void vf50_ts_close(struct input_dev *dev_input)
{
 struct vf50_touch_device *touchdev = input_get_drvdata(dev_input);
 struct device *dev = &touchdev->pdev->dev;

 touchdev->stop_touchscreen = 1;


 mb();
 synchronize_irq(touchdev->pen_irq);

 gpiod_set_value(touchdev->gpio_ym, 0);
 pinctrl_pm_select_default_state(dev);

 dev_dbg(dev, "Input device %s closed, disable touch detection\n",
  dev_input->name);
}
