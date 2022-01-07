
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct gpio_device {struct device* mockdev; struct device dev; struct gpio_chip* chip; } ;
struct gpio_chip {int base; struct device* parent; } ;
struct TYPE_3__ {int p; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 struct device* device_create_with_groups (TYPE_1__*,struct device*,int ,struct gpio_chip*,int ,char*,int ) ;
 TYPE_1__ gpio_class ;
 int gpiochip_groups ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_lock ;

int gpiochip_sysfs_register(struct gpio_device *gdev)
{
 struct device *dev;
 struct device *parent;
 struct gpio_chip *chip = gdev->chip;







 if (!gpio_class.p)
  return 0;





 if (chip->parent)
  parent = chip->parent;
 else
  parent = &gdev->dev;


 dev = device_create_with_groups(&gpio_class, parent,
     MKDEV(0, 0),
     chip, gpiochip_groups,
     "gpiochip%d", chip->base);
 if (IS_ERR(dev))
  return PTR_ERR(dev);

 mutex_lock(&sysfs_lock);
 gdev->mockdev = dev;
 mutex_unlock(&sysfs_lock);

 return 0;
}
