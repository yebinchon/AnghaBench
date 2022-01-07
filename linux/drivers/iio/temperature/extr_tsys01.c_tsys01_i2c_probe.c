
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsys01_dev {int convert_and_read; int read_prom_word; int reset; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct tsys01_dev* iio_priv (struct iio_dev*) ;
 int ms_sensors_convert_and_read ;
 int ms_sensors_read_prom_word ;
 int ms_sensors_reset ;
 int tsys01_probe (struct iio_dev*,int *) ;

__attribute__((used)) static int tsys01_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct tsys01_dev *dev_data;
 struct iio_dev *indio_dev;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WORD_DATA |
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
 dev_data->reset = ms_sensors_reset;
 dev_data->read_prom_word = ms_sensors_read_prom_word;
 dev_data->convert_and_read = ms_sensors_convert_and_read;

 i2c_set_clientdata(client, indio_dev);

 return tsys01_probe(indio_dev, &client->dev);
}
