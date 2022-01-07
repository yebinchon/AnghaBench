
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct iio_trigger {int * ops; TYPE_1__ dev; } ;
struct TYPE_7__ {int parent; } ;
struct iio_dev {TYPE_3__ dev; int trig; int id; } ;
struct hid_sensor_common {TYPE_2__* pdev; int work; struct iio_trigger* trigger; } ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int hid_sensor_set_power_work ;
 int hid_sensor_setup_batch_mode (struct iio_dev*,struct hid_sensor_common*) ;
 int hid_sensor_trigger_ops ;
 int iio_device_set_drvdata (struct iio_dev*,struct hid_sensor_common*) ;
 struct iio_trigger* iio_trigger_alloc (char*,char const*,int ) ;
 int iio_trigger_free (struct iio_trigger*) ;
 int iio_trigger_get (struct iio_trigger*) ;
 int iio_trigger_register (struct iio_trigger*) ;
 int iio_trigger_set_drvdata (struct iio_trigger*,struct hid_sensor_common*) ;
 int iio_trigger_unregister (struct iio_trigger*) ;
 int pm_runtime_set_active (TYPE_3__*) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_suspend_ignore_children (int *,int) ;

int hid_sensor_setup_trigger(struct iio_dev *indio_dev, const char *name,
    struct hid_sensor_common *attrb)
{
 int ret;
 struct iio_trigger *trig;

 trig = iio_trigger_alloc("%s-dev%d", name, indio_dev->id);
 if (trig == ((void*)0)) {
  dev_err(&indio_dev->dev, "Trigger Allocate Failed\n");
  ret = -ENOMEM;
  goto error_ret;
 }

 trig->dev.parent = indio_dev->dev.parent;
 iio_trigger_set_drvdata(trig, attrb);
 trig->ops = &hid_sensor_trigger_ops;
 ret = iio_trigger_register(trig);

 if (ret) {
  dev_err(&indio_dev->dev, "Trigger Register Failed\n");
  goto error_free_trig;
 }
 attrb->trigger = trig;
 indio_dev->trig = iio_trigger_get(trig);

 hid_sensor_setup_batch_mode(indio_dev, attrb);

 ret = pm_runtime_set_active(&indio_dev->dev);
 if (ret)
  goto error_unreg_trigger;

 iio_device_set_drvdata(indio_dev, attrb);

 INIT_WORK(&attrb->work, hid_sensor_set_power_work);

 pm_suspend_ignore_children(&attrb->pdev->dev, 1);

 pm_runtime_set_autosuspend_delay(&attrb->pdev->dev,
      3000);
 return ret;
error_unreg_trigger:
 iio_trigger_unregister(trig);
error_free_trig:
 iio_trigger_free(trig);
error_ret:
 return ret;
}
