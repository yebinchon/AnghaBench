
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ms_tp_dev {int res_index; int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; TYPE_1__ dev; int name; int * info; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct ms_tp_dev* iio_priv (struct iio_dev*) ;
 int ms5637_channels ;
 int ms5637_info ;
 int ms_sensors_reset (struct i2c_client*,int,int) ;
 int ms_sensors_tp_read_prom (struct ms_tp_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ms5637_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ms_tp_dev *dev_data;
 struct iio_dev *indio_dev;
 int ret;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_WORD_DATA |
         I2C_FUNC_SMBUS_WRITE_BYTE |
         I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
  dev_err(&client->dev,
   "Adapter does not support some i2c transaction\n");
  return -EOPNOTSUPP;
 }

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*dev_data));
 if (!indio_dev)
  return -ENOMEM;

 dev_data = iio_priv(indio_dev);
 dev_data->client = client;
 dev_data->res_index = 5;
 mutex_init(&dev_data->lock);

 indio_dev->info = &ms5637_info;
 indio_dev->name = id->name;
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ms5637_channels;
 indio_dev->num_channels = ARRAY_SIZE(ms5637_channels);

 i2c_set_clientdata(client, indio_dev);

 ret = ms_sensors_reset(client, 0x1E, 3000);
 if (ret)
  return ret;

 ret = ms_sensors_tp_read_prom(dev_data);
 if (ret)
  return ret;

 return devm_iio_device_register(&client->dev, indio_dev);
}
