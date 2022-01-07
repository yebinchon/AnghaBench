
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms5611_state {struct i2c_client* client; int read_adc_temp_and_pressure; int read_prom_word; int reset; } ;
struct iio_dev {int dummy; } ;
struct i2c_device_id {int driver_data; int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int ms5611_i2c_read_adc_temp_and_pressure ;
 int ms5611_i2c_read_prom_word ;
 int ms5611_i2c_reset ;
 int ms5611_probe (struct iio_dev*,int *,int ,int ) ;

__attribute__((used)) static int ms5611_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct ms5611_state *st;
 struct iio_dev *indio_dev;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WRITE_BYTE |
         I2C_FUNC_SMBUS_READ_WORD_DATA |
         I2C_FUNC_SMBUS_READ_I2C_BLOCK))
  return -EOPNOTSUPP;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 st->reset = ms5611_i2c_reset;
 st->read_prom_word = ms5611_i2c_read_prom_word;
 st->read_adc_temp_and_pressure = ms5611_i2c_read_adc_temp_and_pressure;
 st->client = client;

 return ms5611_probe(indio_dev, &client->dev, id->name, id->driver_data);
}
