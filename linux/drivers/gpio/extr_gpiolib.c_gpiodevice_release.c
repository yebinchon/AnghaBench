
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_device {struct gpio_device* descs; int label; int id; int list; } ;
struct device {int dummy; } ;


 struct gpio_device* dev_get_drvdata (struct device*) ;
 int gpio_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct gpio_device*) ;
 int kfree_const (int ) ;
 int list_del (int *) ;

__attribute__((used)) static void gpiodevice_release(struct device *dev)
{
 struct gpio_device *gdev = dev_get_drvdata(dev);

 list_del(&gdev->list);
 ida_simple_remove(&gpio_ida, gdev->id);
 kfree_const(gdev->label);
 kfree(gdev->descs);
 kfree(gdev);
}
