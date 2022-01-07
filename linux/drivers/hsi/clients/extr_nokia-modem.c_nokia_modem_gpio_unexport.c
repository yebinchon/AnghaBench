
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nokia_modem_device {int gpio_amount; TYPE_1__* gpios; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int gpio; int name; } ;


 struct nokia_modem_device* dev_get_drvdata (struct device*) ;
 int gpiod_unexport (int ) ;
 int sysfs_remove_link (int *,int ) ;

__attribute__((used)) static void nokia_modem_gpio_unexport(struct device *dev)
{
 struct nokia_modem_device *modem = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < modem->gpio_amount; i++) {
  sysfs_remove_link(&dev->kobj, modem->gpios[i].name);
  gpiod_unexport(modem->gpios[i].gpio);
 }
}
