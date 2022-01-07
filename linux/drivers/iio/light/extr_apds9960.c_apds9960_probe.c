
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int * setup_ops; int available_scan_masks; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct iio_buffer {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
struct apds9960_data {int lock; struct iio_dev* indio_dev; struct i2c_client* client; int regmap; } ;


 int APDS9960_DRV_NAME ;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int apds9960_buffer_setup_ops ;
 int apds9960_channels ;
 int apds9960_chip_init (struct apds9960_data*) ;
 int apds9960_info ;
 int apds9960_interrupt_handler ;
 int apds9960_regfield_init (struct apds9960_data*) ;
 int apds9960_regmap_config ;
 int apds9960_scan_masks ;
 int apds9960_set_power_state (struct apds9960_data*,int) ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct iio_buffer* devm_iio_kfifo_allocate (int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;
 int iio_device_register (struct iio_dev*) ;
 struct apds9960_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int apds9960_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct apds9960_data *data;
 struct iio_buffer *buffer;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 buffer = devm_iio_kfifo_allocate(&client->dev);
 if (!buffer)
  return -ENOMEM;

 iio_device_attach_buffer(indio_dev, buffer);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &apds9960_info;
 indio_dev->name = APDS9960_DRV_NAME;
 indio_dev->channels = apds9960_channels;
 indio_dev->num_channels = ARRAY_SIZE(apds9960_channels);
 indio_dev->available_scan_masks = apds9960_scan_masks;
 indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
 indio_dev->setup_ops = &apds9960_buffer_setup_ops;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);

 data->regmap = devm_regmap_init_i2c(client, &apds9960_regmap_config);
 if (IS_ERR(data->regmap)) {
  dev_err(&client->dev, "regmap initialization failed.\n");
  return PTR_ERR(data->regmap);
 }

 data->client = client;
 data->indio_dev = indio_dev;
 mutex_init(&data->lock);

 ret = pm_runtime_set_active(&client->dev);
 if (ret)
  goto error_power_down;

 pm_runtime_enable(&client->dev);
 pm_runtime_set_autosuspend_delay(&client->dev, 5000);
 pm_runtime_use_autosuspend(&client->dev);

 apds9960_set_power_state(data, 1);

 ret = apds9960_regfield_init(data);
 if (ret)
  goto error_power_down;

 ret = apds9960_chip_init(data);
 if (ret)
  goto error_power_down;

 if (client->irq <= 0) {
  dev_err(&client->dev, "no valid irq defined\n");
  ret = -EINVAL;
  goto error_power_down;
 }
 ret = devm_request_threaded_irq(&client->dev, client->irq,
     ((void*)0), apds9960_interrupt_handler,
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     "apds9960_event",
     indio_dev);
 if (ret) {
  dev_err(&client->dev, "request irq (%d) failed\n", client->irq);
  goto error_power_down;
 }

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_power_down;

 apds9960_set_power_state(data, 0);

 return 0;

error_power_down:
 apds9960_set_power_state(data, 0);

 return ret;
}
