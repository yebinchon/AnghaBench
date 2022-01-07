
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stk3310_data {int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int STK3310_DRIVER_NAME ;
 int STK3310_EVENT ;
 int STK3310_STATE_STANDBY ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_request_threaded_irq (int *,scalar_t__,int ,int ,int,int ,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int stk3310_channels ;
 int stk3310_info ;
 int stk3310_init (struct iio_dev*) ;
 int stk3310_irq_event_handler ;
 int stk3310_irq_handler ;
 int stk3310_regmap_init (struct stk3310_data*) ;
 int stk3310_set_state (struct stk3310_data*,int ) ;

__attribute__((used)) static int stk3310_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct stk3310_data *data;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&client->dev, "iio allocation failed!\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->client = client;
 i2c_set_clientdata(client, indio_dev);
 mutex_init(&data->lock);

 ret = stk3310_regmap_init(data);
 if (ret < 0)
  return ret;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &stk3310_info;
 indio_dev->name = STK3310_DRIVER_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = stk3310_channels;
 indio_dev->num_channels = ARRAY_SIZE(stk3310_channels);

 ret = stk3310_init(indio_dev);
 if (ret < 0)
  return ret;

 if (client->irq > 0) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
      stk3310_irq_handler,
      stk3310_irq_event_handler,
      IRQF_TRIGGER_FALLING |
      IRQF_ONESHOT,
      STK3310_EVENT, indio_dev);
  if (ret < 0) {
   dev_err(&client->dev, "request irq %d failed\n",
    client->irq);
   goto err_standby;
  }
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "device_register failed\n");
  goto err_standby;
 }

 return 0;

err_standby:
 stk3310_set_state(data, STK3310_STATE_STANDBY);
 return ret;
}
