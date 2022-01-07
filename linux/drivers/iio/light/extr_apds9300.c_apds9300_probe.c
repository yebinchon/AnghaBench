
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int * info; int modes; int name; int num_channels; int channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;
struct apds9300_data {int mutex; struct i2c_client* client; } ;


 int APDS9300_DRV_NAME ;
 int APDS9300_IRQ_NAME ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int apds9300_channels ;
 int apds9300_chip_init (struct apds9300_data*) ;
 int apds9300_info ;
 int apds9300_info_no_irq ;
 int apds9300_interrupt_handler ;
 int apds9300_set_power_state (struct apds9300_data*,int ) ;
 int dev_err (int *,char*,int) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,int ,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct apds9300_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int apds9300_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct apds9300_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 ret = apds9300_chip_init(data);
 if (ret < 0)
  goto err;

 mutex_init(&data->mutex);

 indio_dev->dev.parent = &client->dev;
 indio_dev->channels = apds9300_channels;
 indio_dev->num_channels = ARRAY_SIZE(apds9300_channels);
 indio_dev->name = APDS9300_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;

 if (client->irq)
  indio_dev->info = &apds9300_info;
 else
  indio_dev->info = &apds9300_info_no_irq;

 if (client->irq) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
    ((void*)0), apds9300_interrupt_handler,
    IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
    APDS9300_IRQ_NAME, indio_dev);
  if (ret) {
   dev_err(&client->dev, "irq request error %d\n", -ret);
   goto err;
  }
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto err;

 return 0;

err:

 apds9300_set_power_state(data, 0);
 return ret;
}
