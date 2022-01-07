
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ms_ht_dev {int lock; scalar_t__ res_index; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; TYPE_1__ dev; int name; int * info; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int INDIO_DIRECT_MODE ;
 int TSYS02D_RESET ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct ms_ht_dev* iio_priv (struct iio_dev*) ;
 int ms_sensors_read_serial (struct i2c_client*,int *) ;
 int ms_sensors_reset (struct i2c_client*,int ,int) ;
 int mutex_init (int *) ;
 int tsys02d_channels ;
 int tsys02d_info ;

__attribute__((used)) static int tsys02d_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct ms_ht_dev *dev_data;
 struct iio_dev *indio_dev;
 int ret;
 u64 serial_number;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
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
 dev_data->res_index = 0;
 mutex_init(&dev_data->lock);

 indio_dev->info = &tsys02d_info;
 indio_dev->name = id->name;
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = tsys02d_channels;
 indio_dev->num_channels = ARRAY_SIZE(tsys02d_channels);

 i2c_set_clientdata(client, indio_dev);

 ret = ms_sensors_reset(client, TSYS02D_RESET, 15000);
 if (ret)
  return ret;

 ret = ms_sensors_read_serial(client, &serial_number);
 if (ret)
  return ret;
 dev_info(&client->dev, "Serial number : %llx", serial_number);

 return devm_iio_device_register(&client->dev, indio_dev);
}
