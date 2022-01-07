
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adxl34x {TYPE_1__* dev; int input; int irq; } ;
struct TYPE_2__ {int kobj; } ;


 int adxl34x_attr_group ;
 int dev_dbg (TYPE_1__*,char*) ;
 int free_irq (int ,struct adxl34x*) ;
 int input_unregister_device (int ) ;
 int kfree (struct adxl34x*) ;
 int sysfs_remove_group (int *,int *) ;

int adxl34x_remove(struct adxl34x *ac)
{
 sysfs_remove_group(&ac->dev->kobj, &adxl34x_attr_group);
 free_irq(ac->irq, ac);
 input_unregister_device(ac->input);
 dev_dbg(ac->dev, "unregistered accelerometer\n");
 kfree(ac);

 return 0;
}
