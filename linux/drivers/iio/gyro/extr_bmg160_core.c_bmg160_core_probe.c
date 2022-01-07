
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_6__ {struct device* parent; } ;
struct iio_dev {char const* name; int id; int * info; int modes; int available_scan_masks; int num_channels; int channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct bmg160_data {int irq; TYPE_3__* motion_trig; TYPE_3__* dready_trig; int mutex; int orientation; struct regmap* regmap; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_8__ {int * ops; TYPE_2__ dev; } ;


 scalar_t__ ACPI_HANDLE (struct device*) ;
 int ARRAY_SIZE (int ) ;
 int BMG160_AUTO_SUSPEND_DELAY_MS ;
 int BMG160_IRQ_NAME ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_TRIGGER_RISING ;
 int bmg160_accel_scan_masks ;
 int bmg160_buffer_setup_ops ;
 int bmg160_channels ;
 int bmg160_chip_init (struct bmg160_data*) ;
 int bmg160_data_rdy_trig_poll ;
 int bmg160_event_handler ;
 int bmg160_info ;
 char* bmg160_match_acpi_device (struct device*) ;
 int bmg160_trigger_handler ;
 int bmg160_trigger_ops ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 void* devm_iio_trigger_alloc (struct device*,char*,char const*,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,int ,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;
 int iio_read_mount_matrix (struct device*,char*,int *) ;
 int iio_trigger_register (TYPE_3__*) ;
 int iio_trigger_set_drvdata (TYPE_3__*,struct iio_dev*) ;
 int iio_trigger_unregister (TYPE_3__*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int ,int ,int *) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;

int bmg160_core_probe(struct device *dev, struct regmap *regmap, int irq,
        const char *name)
{
 struct bmg160_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 dev_set_drvdata(dev, indio_dev);
 data->irq = irq;
 data->regmap = regmap;

 ret = iio_read_mount_matrix(dev, "mount-matrix",
    &data->orientation);
 if (ret)
  return ret;

 ret = bmg160_chip_init(data);
 if (ret < 0)
  return ret;

 mutex_init(&data->mutex);

 if (ACPI_HANDLE(dev))
  name = bmg160_match_acpi_device(dev);

 indio_dev->dev.parent = dev;
 indio_dev->channels = bmg160_channels;
 indio_dev->num_channels = ARRAY_SIZE(bmg160_channels);
 indio_dev->name = name;
 indio_dev->available_scan_masks = bmg160_accel_scan_masks;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &bmg160_info;

 if (data->irq > 0) {
  ret = devm_request_threaded_irq(dev,
      data->irq,
      bmg160_data_rdy_trig_poll,
      bmg160_event_handler,
      IRQF_TRIGGER_RISING,
      BMG160_IRQ_NAME,
      indio_dev);
  if (ret)
   return ret;

  data->dready_trig = devm_iio_trigger_alloc(dev,
          "%s-dev%d",
          indio_dev->name,
          indio_dev->id);
  if (!data->dready_trig)
   return -ENOMEM;

  data->motion_trig = devm_iio_trigger_alloc(dev,
         "%s-any-motion-dev%d",
         indio_dev->name,
         indio_dev->id);
  if (!data->motion_trig)
   return -ENOMEM;

  data->dready_trig->dev.parent = dev;
  data->dready_trig->ops = &bmg160_trigger_ops;
  iio_trigger_set_drvdata(data->dready_trig, indio_dev);
  ret = iio_trigger_register(data->dready_trig);
  if (ret)
   return ret;

  data->motion_trig->dev.parent = dev;
  data->motion_trig->ops = &bmg160_trigger_ops;
  iio_trigger_set_drvdata(data->motion_trig, indio_dev);
  ret = iio_trigger_register(data->motion_trig);
  if (ret) {
   data->motion_trig = ((void*)0);
   goto err_trigger_unregister;
  }
 }

 ret = iio_triggered_buffer_setup(indio_dev,
      iio_pollfunc_store_time,
      bmg160_trigger_handler,
      &bmg160_buffer_setup_ops);
 if (ret < 0) {
  dev_err(dev,
   "iio triggered buffer setup failed\n");
  goto err_trigger_unregister;
 }

 ret = pm_runtime_set_active(dev);
 if (ret)
  goto err_buffer_cleanup;

 pm_runtime_enable(dev);
 pm_runtime_set_autosuspend_delay(dev,
      BMG160_AUTO_SUSPEND_DELAY_MS);
 pm_runtime_use_autosuspend(dev);

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(dev, "unable to register iio device\n");
  goto err_buffer_cleanup;
 }

 return 0;

err_buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
err_trigger_unregister:
 if (data->dready_trig)
  iio_trigger_unregister(data->dready_trig);
 if (data->motion_trig)
  iio_trigger_unregister(data->motion_trig);

 return ret;
}
