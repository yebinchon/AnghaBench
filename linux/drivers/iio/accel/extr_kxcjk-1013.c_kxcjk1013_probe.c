
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct kxcjk_1013_platform_data {int active_high_intr; } ;
struct kxcjk1013_data {int active_high_intr; int chipset; TYPE_3__* motion_trig; TYPE_3__* dready_trig; int is_smo8500_device; int mutex; struct i2c_client* client; } ;
struct TYPE_7__ {int * parent; } ;
struct iio_dev {char const* name; TYPE_3__* trig; int id; int * info; int modes; int available_scan_masks; int num_channels; int channels; TYPE_1__ dev; } ;
struct i2c_device_id {char* name; scalar_t__ driver_data; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
typedef enum kx_chipset { ____Placeholder_kx_chipset } kx_chipset ;
struct TYPE_8__ {int * parent; } ;
struct TYPE_9__ {int * ops; TYPE_2__ dev; } ;


 scalar_t__ ACPI_HANDLE (int *) ;
 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_TRIGGER_RISING ;
 int KXCJK1013_IRQ_NAME ;
 int KXCJK1013_SLEEP_DELAY_MS ;
 int STANDBY ;
 int dev_err (int *,char*) ;
 struct kxcjk_1013_platform_data* dev_get_platdata (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 void* devm_iio_trigger_alloc (int *,char*,char const*,int ) ;
 int devm_request_threaded_irq (int *,scalar_t__,int ,int ,int ,int ,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_get (TYPE_3__*) ;
 int iio_trigger_register (TYPE_3__*) ;
 int iio_trigger_set_drvdata (TYPE_3__*,struct iio_dev*) ;
 int iio_trigger_unregister (TYPE_3__*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int kxcjk1013_buffer_setup_ops ;
 int kxcjk1013_channels ;
 int kxcjk1013_chip_init (struct kxcjk1013_data*) ;
 int kxcjk1013_data_rdy_trig_poll ;
 int kxcjk1013_event_handler ;
 int kxcjk1013_info ;
 char* kxcjk1013_match_acpi_device (int *,int*,int *) ;
 int kxcjk1013_scan_masks ;
 int kxcjk1013_set_mode (struct kxcjk1013_data*,int ) ;
 int kxcjk1013_trigger_handler ;
 int kxcjk1013_trigger_ops ;
 int mutex_init (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int kxcjk1013_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct kxcjk1013_data *data;
 struct iio_dev *indio_dev;
 struct kxcjk_1013_platform_data *pdata;
 const char *name;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 pdata = dev_get_platdata(&client->dev);
 if (pdata)
  data->active_high_intr = pdata->active_high_intr;
 else
  data->active_high_intr = 1;

 if (id) {
  data->chipset = (enum kx_chipset)(id->driver_data);
  name = id->name;
 } else if (ACPI_HANDLE(&client->dev)) {
  name = kxcjk1013_match_acpi_device(&client->dev,
         &data->chipset,
         &data->is_smo8500_device);
 } else
  return -ENODEV;

 ret = kxcjk1013_chip_init(data);
 if (ret < 0)
  return ret;

 mutex_init(&data->mutex);

 indio_dev->dev.parent = &client->dev;
 indio_dev->channels = kxcjk1013_channels;
 indio_dev->num_channels = ARRAY_SIZE(kxcjk1013_channels);
 indio_dev->available_scan_masks = kxcjk1013_scan_masks;
 indio_dev->name = name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &kxcjk1013_info;

 if (client->irq > 0 && !data->is_smo8500_device) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
      kxcjk1013_data_rdy_trig_poll,
      kxcjk1013_event_handler,
      IRQF_TRIGGER_RISING,
      KXCJK1013_IRQ_NAME,
      indio_dev);
  if (ret)
   goto err_poweroff;

  data->dready_trig = devm_iio_trigger_alloc(&client->dev,
          "%s-dev%d",
          indio_dev->name,
          indio_dev->id);
  if (!data->dready_trig) {
   ret = -ENOMEM;
   goto err_poweroff;
  }

  data->motion_trig = devm_iio_trigger_alloc(&client->dev,
         "%s-any-motion-dev%d",
         indio_dev->name,
         indio_dev->id);
  if (!data->motion_trig) {
   ret = -ENOMEM;
   goto err_poweroff;
  }

  data->dready_trig->dev.parent = &client->dev;
  data->dready_trig->ops = &kxcjk1013_trigger_ops;
  iio_trigger_set_drvdata(data->dready_trig, indio_dev);
  indio_dev->trig = data->dready_trig;
  iio_trigger_get(indio_dev->trig);
  ret = iio_trigger_register(data->dready_trig);
  if (ret)
   goto err_poweroff;

  data->motion_trig->dev.parent = &client->dev;
  data->motion_trig->ops = &kxcjk1013_trigger_ops;
  iio_trigger_set_drvdata(data->motion_trig, indio_dev);
  ret = iio_trigger_register(data->motion_trig);
  if (ret) {
   data->motion_trig = ((void*)0);
   goto err_trigger_unregister;
  }
 }

 ret = iio_triggered_buffer_setup(indio_dev,
      &iio_pollfunc_store_time,
      kxcjk1013_trigger_handler,
      &kxcjk1013_buffer_setup_ops);
 if (ret < 0) {
  dev_err(&client->dev, "iio triggered buffer setup failed\n");
  goto err_trigger_unregister;
 }

 ret = pm_runtime_set_active(&client->dev);
 if (ret)
  goto err_buffer_cleanup;

 pm_runtime_enable(&client->dev);
 pm_runtime_set_autosuspend_delay(&client->dev,
      KXCJK1013_SLEEP_DELAY_MS);
 pm_runtime_use_autosuspend(&client->dev);

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "unable to register iio device\n");
  goto err_buffer_cleanup;
 }

 return 0;

err_buffer_cleanup:
 if (data->dready_trig)
  iio_triggered_buffer_cleanup(indio_dev);
err_trigger_unregister:
 if (data->dready_trig)
  iio_trigger_unregister(data->dready_trig);
 if (data->motion_trig)
  iio_trigger_unregister(data->motion_trig);
err_poweroff:
 kxcjk1013_set_mode(data, STANDBY);

 return ret;
}
