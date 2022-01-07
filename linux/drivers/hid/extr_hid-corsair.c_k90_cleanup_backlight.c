
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hid_device {int dummy; } ;
struct corsair_drvdata {TYPE_2__* backlight; } ;
struct TYPE_3__ {TYPE_2__* name; } ;
struct TYPE_4__ {int removed; TYPE_1__ cdev; int work; } ;


 int cancel_work_sync (int *) ;
 struct corsair_drvdata* hid_get_drvdata (struct hid_device*) ;
 int kfree (TYPE_2__*) ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static void k90_cleanup_backlight(struct hid_device *dev)
{
 struct corsair_drvdata *drvdata = hid_get_drvdata(dev);

 if (drvdata->backlight) {
  drvdata->backlight->removed = 1;
  led_classdev_unregister(&drvdata->backlight->cdev);
  cancel_work_sync(&drvdata->backlight->work);
  kfree(drvdata->backlight->cdev.name);
  kfree(drvdata->backlight);
 }
}
