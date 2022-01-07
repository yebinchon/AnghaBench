
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct TYPE_2__ {int work; } ;
struct gpio_extcon_data {scalar_t__ extcon_id; TYPE_1__ work; int edev; int gpiod; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ EXTCON_NONE ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int INIT_DELAYED_WORK (TYPE_1__*,int (*) (int *)) ;
 unsigned long IRQF_TRIGGER_FALLING ;
 unsigned long IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_extcon_dev_allocate (struct device*,scalar_t__*) ;
 int devm_extcon_dev_register (struct device*,int ) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct gpio_extcon_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_any_context_irq (struct device*,int,int ,unsigned long,int ,struct gpio_extcon_data*) ;
 int gpio_extcon_work (int *) ;
 int gpio_irq_handler ;
 scalar_t__ gpiod_is_active_low (int ) ;
 int gpiod_to_irq (int ) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_extcon_data*) ;

__attribute__((used)) static int gpio_extcon_probe(struct platform_device *pdev)
{
 struct gpio_extcon_data *data;
 struct device *dev = &pdev->dev;
 unsigned long irq_flags;
 int irq;
 int ret;

 data = devm_kzalloc(dev, sizeof(struct gpio_extcon_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 if (data->extcon_id > EXTCON_NONE)
  return -EINVAL;

 data->gpiod = devm_gpiod_get(dev, "extcon", GPIOD_IN);
 if (IS_ERR(data->gpiod))
  return PTR_ERR(data->gpiod);
 irq = gpiod_to_irq(data->gpiod);
 if (irq <= 0)
  return irq;







 if (gpiod_is_active_low(data->gpiod))
  irq_flags = IRQF_TRIGGER_FALLING;
 else
  irq_flags = IRQF_TRIGGER_RISING;


 data->edev = devm_extcon_dev_allocate(dev, &data->extcon_id);
 if (IS_ERR(data->edev)) {
  dev_err(dev, "failed to allocate extcon device\n");
  return -ENOMEM;
 }

 ret = devm_extcon_dev_register(dev, data->edev);
 if (ret < 0)
  return ret;

 INIT_DELAYED_WORK(&data->work, gpio_extcon_work);





 ret = devm_request_any_context_irq(dev, irq,
     gpio_irq_handler, irq_flags,
     pdev->name, data);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, data);

 gpio_extcon_work(&data->work.work);

 return 0;
}
