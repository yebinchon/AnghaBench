
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpiod_data {int value_kn; int irq; scalar_t__ irq_flags; struct gpio_desc* desc; } ;
struct gpio_desc {TYPE_1__* gdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int chip; } ;


 struct gpiod_data* dev_get_drvdata (struct device*) ;
 int free_irq (int ,struct gpiod_data*) ;
 int gpio_chip_hwgpio (struct gpio_desc*) ;
 int gpiochip_unlock_as_irq (int ,int ) ;
 int sysfs_put (int ) ;

__attribute__((used)) static void gpio_sysfs_free_irq(struct device *dev)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 struct gpio_desc *desc = data->desc;

 data->irq_flags = 0;
 free_irq(data->irq, data);
 gpiochip_unlock_as_irq(desc->gdev->chip, gpio_chip_hwgpio(desc));
 sysfs_put(data->value_kn);
}
