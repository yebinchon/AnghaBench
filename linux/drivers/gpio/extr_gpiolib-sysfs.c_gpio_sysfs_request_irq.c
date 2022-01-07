
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpiod_data {scalar_t__ irq; unsigned char irq_flags; int value_kn; struct gpio_desc* desc; } ;
struct gpio_desc {TYPE_2__* gdev; int flags; } ;
struct TYPE_3__ {int sd; } ;
struct device {TYPE_1__ kobj; } ;
struct TYPE_4__ {int chip; } ;


 int EIO ;
 int ENODEV ;
 int FLAG_ACTIVE_LOW ;
 unsigned char GPIO_IRQF_TRIGGER_FALLING ;
 unsigned char GPIO_IRQF_TRIGGER_RISING ;
 unsigned long IRQF_SHARED ;
 unsigned long IRQF_TRIGGER_FALLING ;
 unsigned long IRQF_TRIGGER_RISING ;
 struct gpiod_data* dev_get_drvdata (struct device*) ;
 int gpio_chip_hwgpio (struct gpio_desc*) ;
 int gpio_sysfs_irq ;
 int gpiochip_lock_as_irq (int ,int ) ;
 int gpiochip_unlock_as_irq (int ,int ) ;
 scalar_t__ gpiod_to_irq (struct gpio_desc*) ;
 int request_any_context_irq (scalar_t__,int ,unsigned long,char*,struct gpiod_data*) ;
 int sysfs_get_dirent (int ,char*) ;
 int sysfs_put (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gpio_sysfs_request_irq(struct device *dev, unsigned char flags)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 struct gpio_desc *desc = data->desc;
 unsigned long irq_flags;
 int ret;

 data->irq = gpiod_to_irq(desc);
 if (data->irq < 0)
  return -EIO;

 data->value_kn = sysfs_get_dirent(dev->kobj.sd, "value");
 if (!data->value_kn)
  return -ENODEV;

 irq_flags = IRQF_SHARED;
 if (flags & GPIO_IRQF_TRIGGER_FALLING)
  irq_flags |= test_bit(FLAG_ACTIVE_LOW, &desc->flags) ?
   IRQF_TRIGGER_RISING : IRQF_TRIGGER_FALLING;
 if (flags & GPIO_IRQF_TRIGGER_RISING)
  irq_flags |= test_bit(FLAG_ACTIVE_LOW, &desc->flags) ?
   IRQF_TRIGGER_FALLING : IRQF_TRIGGER_RISING;
 ret = gpiochip_lock_as_irq(desc->gdev->chip, gpio_chip_hwgpio(desc));
 if (ret < 0)
  goto err_put_kn;

 ret = request_any_context_irq(data->irq, gpio_sysfs_irq, irq_flags,
    "gpiolib", data);
 if (ret < 0)
  goto err_unlock;

 data->irq_flags = flags;

 return 0;

err_unlock:
 gpiochip_unlock_as_irq(desc->gdev->chip, gpio_chip_hwgpio(desc));
err_put_kn:
 sysfs_put(data->value_kn);

 return ret;
}
