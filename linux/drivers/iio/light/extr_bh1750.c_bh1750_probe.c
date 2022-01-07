
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; int name; } ;
struct i2c_client {int dev; int adapter; } ;
struct bh1750_data {int lock; TYPE_2__* chip_info; struct i2c_client* client; } ;
struct TYPE_4__ {int mtreg_to_usec; int mtreg_default; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int INDIO_DIRECT_MODE ;
 int bh1750_change_int_time (struct bh1750_data*,int) ;
 int bh1750_channels ;
 TYPE_2__* bh1750_chip_info_tbl ;
 int bh1750_info ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct bh1750_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int bh1750_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret, usec;
 struct bh1750_data *data;
 struct iio_dev *indio_dev;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C |
    I2C_FUNC_SMBUS_WRITE_BYTE))
  return -EOPNOTSUPP;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->chip_info = &bh1750_chip_info_tbl[id->driver_data];

 usec = data->chip_info->mtreg_to_usec * data->chip_info->mtreg_default;
 ret = bh1750_change_int_time(data, usec);
 if (ret < 0)
  return ret;

 mutex_init(&data->lock);
 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &bh1750_info;
 indio_dev->name = id->name;
 indio_dev->channels = bh1750_channels;
 indio_dev->num_channels = ARRAY_SIZE(bh1750_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 return iio_device_register(indio_dev);
}
