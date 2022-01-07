
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {unsigned int irq_flags; struct gpio_desc* desc; } ;
struct gpio_desc {int flags; } ;
struct device {int dummy; } ;


 int FLAG_ACTIVE_LOW ;
 unsigned int GPIO_IRQF_TRIGGER_FALLING ;
 unsigned int GPIO_IRQF_TRIGGER_RISING ;
 int clear_bit (int ,int *) ;
 struct gpiod_data* dev_get_drvdata (struct device*) ;
 int gpio_sysfs_free_irq (struct device*) ;
 int gpio_sysfs_request_irq (struct device*,unsigned int) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int gpio_sysfs_set_active_low(struct device *dev, int value)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 struct gpio_desc *desc = data->desc;
 int status = 0;
 unsigned int flags = data->irq_flags;

 if (!!test_bit(FLAG_ACTIVE_LOW, &desc->flags) == !!value)
  return 0;

 if (value)
  set_bit(FLAG_ACTIVE_LOW, &desc->flags);
 else
  clear_bit(FLAG_ACTIVE_LOW, &desc->flags);


 if (flags == GPIO_IRQF_TRIGGER_FALLING ||
     flags == GPIO_IRQF_TRIGGER_RISING) {
  gpio_sysfs_free_irq(dev);
  status = gpio_sysfs_request_irq(dev, flags);
 }

 return status;
}
