
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct k90_drvdata* name; } ;
struct TYPE_5__ {int removed; TYPE_3__ cdev; int work; } ;
struct k90_drvdata {TYPE_2__ record_led; } ;
struct TYPE_4__ {int kobj; } ;
struct hid_device {TYPE_1__ dev; } ;
struct corsair_drvdata {struct k90_drvdata* k90; } ;


 int cancel_work_sync (int *) ;
 struct corsair_drvdata* hid_get_drvdata (struct hid_device*) ;
 int k90_attr_group ;
 int kfree (struct k90_drvdata*) ;
 int led_classdev_unregister (TYPE_3__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void k90_cleanup_macro_functions(struct hid_device *dev)
{
 struct corsair_drvdata *drvdata = hid_get_drvdata(dev);
 struct k90_drvdata *k90 = drvdata->k90;

 if (k90) {
  sysfs_remove_group(&dev->dev.kobj, &k90_attr_group);

  k90->record_led.removed = 1;
  led_classdev_unregister(&k90->record_led.cdev);
  cancel_work_sync(&k90->record_led.work);
  kfree(k90->record_led.cdev.name);

  kfree(k90);
 }
}
