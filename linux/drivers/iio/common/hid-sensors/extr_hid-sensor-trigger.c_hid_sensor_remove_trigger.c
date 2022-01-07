
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_sensor_common {int trigger; int work; TYPE_1__* pdev; int runtime_pm_enable; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ atomic_read (int *) ;
 int cancel_work_sync (int *) ;
 int iio_trigger_free (int ) ;
 int iio_trigger_unregister (int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;

void hid_sensor_remove_trigger(struct hid_sensor_common *attrb)
{
 if (atomic_read(&attrb->runtime_pm_enable))
  pm_runtime_disable(&attrb->pdev->dev);

 pm_runtime_set_suspended(&attrb->pdev->dev);
 pm_runtime_put_noidle(&attrb->pdev->dev);

 cancel_work_sync(&attrb->work);
 iio_trigger_unregister(attrb->trigger);
 iio_trigger_free(attrb->trigger);
}
