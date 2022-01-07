
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zopt2201_data {int rate; int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int name; int num_channels; int channels; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int INDIO_DIRECT_MODE ;
 int ZOPT2201_DRV_NAME ;
 int ZOPT2201_LS_GAIN_3 ;
 int ZOPT2201_MEAS_FREQ_100MS ;
 int ZOPT2201_MEAS_RES_18BIT ;
 int ZOPT2201_PART_ID ;
 int ZOPT2201_PART_NUMBER ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct zopt2201_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int zopt2201_channels ;
 int zopt2201_info ;
 int zopt2201_set_gain (struct zopt2201_data*,int ) ;
 int zopt2201_set_resolution (struct zopt2201_data*,int ) ;

__attribute__((used)) static int zopt2201_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct zopt2201_data *data;
 struct iio_dev *indio_dev;
 int ret;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_I2C_BLOCK))
  return -EOPNOTSUPP;

 ret = i2c_smbus_read_byte_data(client, ZOPT2201_PART_ID);
 if (ret < 0)
  return ret;
 if (ret != ZOPT2201_PART_NUMBER)
  return -ENODEV;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &zopt2201_info;
 indio_dev->channels = zopt2201_channels;
 indio_dev->num_channels = ARRAY_SIZE(zopt2201_channels);
 indio_dev->name = ZOPT2201_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;

 data->rate = ZOPT2201_MEAS_FREQ_100MS;
 ret = zopt2201_set_resolution(data, ZOPT2201_MEAS_RES_18BIT);
 if (ret < 0)
  return ret;

 ret = zopt2201_set_gain(data, ZOPT2201_LS_GAIN_3);
 if (ret < 0)
  return ret;

 return devm_iio_device_register(&client->dev, indio_dev);
}
