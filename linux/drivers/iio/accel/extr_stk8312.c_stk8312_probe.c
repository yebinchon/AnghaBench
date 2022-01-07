
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stk8312_data {TYPE_3__* dready_trig; int sample_rate_idx; struct i2c_client* client; int lock; } ;
struct TYPE_7__ {int * parent; } ;
struct iio_dev {int id; int name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
struct TYPE_8__ {int * parent; } ;
struct TYPE_9__ {int * ops; TYPE_2__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int STK8312_DRIVER_NAME ;
 int STK8312_IRQ_NAME ;
 int STK8312_MODE_ACTIVE ;
 int STK8312_MODE_INT_AH_PP ;
 int STK8312_MODE_STANDBY ;
 int STK8312_REG_RESET ;
 int STK8312_RNG_6G ;
 int STK8312_SR_400HZ_IDX ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 TYPE_3__* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 int devm_request_threaded_irq (int *,scalar_t__,int ,int *,int,int ,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct stk8312_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_register (TYPE_3__*) ;
 int iio_trigger_set_drvdata (TYPE_3__*,struct iio_dev*) ;
 int iio_trigger_unregister (TYPE_3__*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int ,int ,int *) ;
 int mutex_init (int *) ;
 int stk8312_buffer_setup_ops ;
 int stk8312_channels ;
 int stk8312_data_rdy_trig_poll ;
 int stk8312_info ;
 int stk8312_set_mode (struct stk8312_data*,int) ;
 int stk8312_set_range (struct stk8312_data*,int ) ;
 int stk8312_trigger_handler ;
 int stk8312_trigger_ops ;

__attribute__((used)) static int stk8312_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct stk8312_data *data;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&client->dev, "iio allocation failed!\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->client = client;
 i2c_set_clientdata(client, indio_dev);
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &stk8312_info;
 indio_dev->name = STK8312_DRIVER_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = stk8312_channels;
 indio_dev->num_channels = ARRAY_SIZE(stk8312_channels);


 ret = i2c_smbus_write_byte_data(data->client, STK8312_REG_RESET, 0x00);
 if (ret < 0) {
  dev_err(&client->dev, "failed to reset sensor\n");
  return ret;
 }
 data->sample_rate_idx = STK8312_SR_400HZ_IDX;
 ret = stk8312_set_range(data, STK8312_RNG_6G);
 if (ret < 0)
  return ret;

 ret = stk8312_set_mode(data,
          STK8312_MODE_INT_AH_PP | STK8312_MODE_ACTIVE);
 if (ret < 0)
  return ret;

 if (client->irq > 0) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
      stk8312_data_rdy_trig_poll,
      ((void*)0),
      IRQF_TRIGGER_RISING |
      IRQF_ONESHOT,
      STK8312_IRQ_NAME,
      indio_dev);
  if (ret < 0) {
   dev_err(&client->dev, "request irq %d failed\n",
    client->irq);
   goto err_power_off;
  }

  data->dready_trig = devm_iio_trigger_alloc(&client->dev,
          "%s-dev%d",
          indio_dev->name,
          indio_dev->id);
  if (!data->dready_trig) {
   ret = -ENOMEM;
   goto err_power_off;
  }

  data->dready_trig->dev.parent = &client->dev;
  data->dready_trig->ops = &stk8312_trigger_ops;
  iio_trigger_set_drvdata(data->dready_trig, indio_dev);
  ret = iio_trigger_register(data->dready_trig);
  if (ret) {
   dev_err(&client->dev, "iio trigger register failed\n");
   goto err_power_off;
  }
 }

 ret = iio_triggered_buffer_setup(indio_dev,
      iio_pollfunc_store_time,
      stk8312_trigger_handler,
      &stk8312_buffer_setup_ops);
 if (ret < 0) {
  dev_err(&client->dev, "iio triggered buffer setup failed\n");
  goto err_trigger_unregister;
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "device_register failed\n");
  goto err_buffer_cleanup;
 }

 return 0;

err_buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
err_trigger_unregister:
 if (data->dready_trig)
  iio_trigger_unregister(data->dready_trig);
err_power_off:
 stk8312_set_mode(data, STK8312_MODE_STANDBY);
 return ret;
}
