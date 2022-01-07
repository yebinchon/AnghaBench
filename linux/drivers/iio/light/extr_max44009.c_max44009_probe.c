
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max44009_data {int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int name; int modes; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_FALLING ;
 int MAX44009_DRV_NAME ;
 int MAX44009_REG_CFG ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct max44009_data* iio_priv (struct iio_dev*) ;
 int max44009_channels ;
 int max44009_info ;
 int max44009_threaded_irq_handler ;
 int mutex_init (int *) ;

__attribute__((used)) static int max44009_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct max44009_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &max44009_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->name = MAX44009_DRV_NAME;
 indio_dev->channels = max44009_channels;
 indio_dev->num_channels = ARRAY_SIZE(max44009_channels);
 mutex_init(&data->lock);


 ret = i2c_smbus_read_byte_data(client, MAX44009_REG_CFG);
 if (ret < 0)
  return ret;

 if (client->irq > 0) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
      ((void*)0),
      max44009_threaded_irq_handler,
      IRQF_TRIGGER_FALLING |
      IRQF_ONESHOT | IRQF_SHARED,
      "max44009_event",
      indio_dev);
  if (ret < 0)
   return ret;
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
