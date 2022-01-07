
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfd77402_data {int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int name; int num_channels; int channels; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int RFD77402_DRV_NAME ;
 int RFD77402_MOD_CHIP_ID ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct rfd77402_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int rfd77402_channels ;
 int rfd77402_info ;
 int rfd77402_init (struct rfd77402_data*) ;
 int rfd77402_powerdown (struct rfd77402_data*) ;

__attribute__((used)) static int rfd77402_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct rfd77402_data *data;
 struct iio_dev *indio_dev;
 int ret;

 ret = i2c_smbus_read_word_data(client, RFD77402_MOD_CHIP_ID);
 if (ret < 0)
  return ret;
 if (ret != 0xad01 && ret != 0xad02)
  return -ENODEV;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &rfd77402_info;
 indio_dev->channels = rfd77402_channels;
 indio_dev->num_channels = ARRAY_SIZE(rfd77402_channels);
 indio_dev->name = RFD77402_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = rfd77402_init(data);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err_powerdown;

 return 0;

err_powerdown:
 rfd77402_powerdown(data);
 return ret;
}
