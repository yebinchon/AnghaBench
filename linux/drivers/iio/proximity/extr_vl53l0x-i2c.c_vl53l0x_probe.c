
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vl53l0x_data {struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {char* name; int modes; int num_channels; int channels; int * info; TYPE_1__ dev; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int INDIO_DIRECT_MODE ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct vl53l0x_data* iio_priv (struct iio_dev*) ;
 int vl53l0x_channels ;
 int vl53l0x_info ;

__attribute__((used)) static int vl53l0x_probe(struct i2c_client *client)
{
 struct vl53l0x_data *data;
 struct iio_dev *indio_dev;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 data->client = client;
 i2c_set_clientdata(client, indio_dev);

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_I2C_BLOCK |
         I2C_FUNC_SMBUS_BYTE_DATA))
  return -EOPNOTSUPP;

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = "vl53l0x";
 indio_dev->info = &vl53l0x_info;
 indio_dev->channels = vl53l0x_channels;
 indio_dev->num_channels = ARRAY_SIZE(vl53l0x_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 return devm_iio_device_register(&client->dev, indio_dev);
}
