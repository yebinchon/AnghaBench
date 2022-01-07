
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc2471_data {struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct i2c_device_id {scalar_t__ driver_data; int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_I2C ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int ) ;
 struct ltc2471_data* iio_priv (struct iio_dev*) ;
 int ltc2471_channel ;
 int ltc2471_get_value (struct i2c_client*) ;
 int ltc2471_info ;
 scalar_t__ ltc2473 ;
 int ltc2473_channel ;

__attribute__((used)) static int ltc2471_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct ltc2471_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -EOPNOTSUPP;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 data->client = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = id->name;
 indio_dev->info = &ltc2471_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 if (id->driver_data == ltc2473)
  indio_dev->channels = ltc2473_channel;
 else
  indio_dev->channels = ltc2471_channel;
 indio_dev->num_channels = 1;


 ret = ltc2471_get_value(client);
 if (ret < 0) {
  dev_err(&client->dev, "Cannot read from device.\n");
  return ret;
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
