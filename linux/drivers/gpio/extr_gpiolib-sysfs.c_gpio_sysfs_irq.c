
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {int value_kn; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sysfs_notify_dirent (int ) ;

__attribute__((used)) static irqreturn_t gpio_sysfs_irq(int irq, void *priv)
{
 struct gpiod_data *data = priv;

 sysfs_notify_dirent(data->value_kn);

 return IRQ_HANDLED;
}
