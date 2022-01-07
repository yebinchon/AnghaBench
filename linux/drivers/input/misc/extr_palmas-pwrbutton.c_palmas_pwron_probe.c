
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct palmas_pwron_config {int long_press_time_val; int pwron_debounce_val; } ;
struct palmas_pwron {int irq; int input_work; struct input_dev* input_dev; struct palmas* palmas; } ;
struct palmas {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {char* name; char* phys; TYPE_1__ dev; } ;


 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int IRQF_TRIGGER_LOW ;
 int KEY_POWER ;
 int PALMAS_LONG_PRESS_KEY ;
 int PALMAS_LPK_TIME_MASK ;
 int PALMAS_PMU_CONTROL_BASE ;
 int PALMAS_PWRON_DEBOUNCE_MASK ;
 int __ffs (int) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (struct device*,char*,...) ;
 struct palmas* dev_get_drvdata (int ) ;
 int dev_name (struct device*) ;
 int device_init_wakeup (struct device*,int) ;
 int free_irq (int ,struct palmas_pwron*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct palmas_pwron*) ;
 struct palmas_pwron* kzalloc (int,int ) ;
 int palmas_power_button_work ;
 int palmas_pwron_params_ofinit (struct device*,struct palmas_pwron_config*) ;
 int palmas_update_bits (struct palmas*,int ,int ,int,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct palmas_pwron*) ;
 int pwron_irq ;
 int request_threaded_irq (int ,int *,int ,int,int ,struct palmas_pwron*) ;

__attribute__((used)) static int palmas_pwron_probe(struct platform_device *pdev)
{
 struct palmas *palmas = dev_get_drvdata(pdev->dev.parent);
 struct device *dev = &pdev->dev;
 struct input_dev *input_dev;
 struct palmas_pwron *pwron;
 struct palmas_pwron_config config;
 int val;
 int error;

 palmas_pwron_params_ofinit(dev, &config);

 pwron = kzalloc(sizeof(*pwron), GFP_KERNEL);
 if (!pwron)
  return -ENOMEM;

 input_dev = input_allocate_device();
 if (!input_dev) {
  dev_err(dev, "Can't allocate power button\n");
  error = -ENOMEM;
  goto err_free_mem;
 }

 input_dev->name = "palmas_pwron";
 input_dev->phys = "palmas_pwron/input0";
 input_dev->dev.parent = dev;

 input_set_capability(input_dev, EV_KEY, KEY_POWER);





 val = config.long_press_time_val << __ffs(PALMAS_LPK_TIME_MASK);
 val |= config.pwron_debounce_val << __ffs(PALMAS_PWRON_DEBOUNCE_MASK);
 error = palmas_update_bits(palmas, PALMAS_PMU_CONTROL_BASE,
       PALMAS_LONG_PRESS_KEY,
       PALMAS_LPK_TIME_MASK |
     PALMAS_PWRON_DEBOUNCE_MASK,
       val);
 if (error) {
  dev_err(dev, "LONG_PRESS_KEY_UPDATE failed: %d\n", error);
  goto err_free_input;
 }

 pwron->palmas = palmas;
 pwron->input_dev = input_dev;

 INIT_DELAYED_WORK(&pwron->input_work, palmas_power_button_work);

 pwron->irq = platform_get_irq(pdev, 0);
 error = request_threaded_irq(pwron->irq, ((void*)0), pwron_irq,
         IRQF_TRIGGER_HIGH |
     IRQF_TRIGGER_LOW |
     IRQF_ONESHOT,
         dev_name(dev), pwron);
 if (error) {
  dev_err(dev, "Can't get IRQ for pwron: %d\n", error);
  goto err_free_input;
 }

 error = input_register_device(input_dev);
 if (error) {
  dev_err(dev, "Can't register power button: %d\n", error);
  goto err_free_irq;
 }

 platform_set_drvdata(pdev, pwron);
 device_init_wakeup(dev, 1);

 return 0;

err_free_irq:
 cancel_delayed_work_sync(&pwron->input_work);
 free_irq(pwron->irq, pwron);
err_free_input:
 input_free_device(input_dev);
err_free_mem:
 kfree(pwron);
 return error;
}
