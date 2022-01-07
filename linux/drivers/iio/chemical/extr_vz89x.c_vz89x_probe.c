
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vz89x_data {TYPE_2__* chip; int lock; scalar_t__ last_update; struct i2c_client* client; int xfer; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; int adapter; } ;
struct TYPE_4__ {int num_channels; int channels; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ HZ ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int INDIO_DIRECT_MODE ;
 int dev_name (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 scalar_t__ i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct vz89x_data* iio_priv (struct iio_dev*) ;
 scalar_t__ jiffies ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,int *) ;
 TYPE_2__* vz89x_chips ;
 int vz89x_dt_ids ;
 int vz89x_i2c_xfer ;
 int vz89x_info ;
 int vz89x_smbus_xfer ;

__attribute__((used)) static int vz89x_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct vz89x_data *data;
 const struct of_device_id *of_id;
 int chip_id;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;
 data = iio_priv(indio_dev);

 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  data->xfer = vz89x_i2c_xfer;
 else if (i2c_check_functionality(client->adapter,
    I2C_FUNC_SMBUS_WORD_DATA | I2C_FUNC_SMBUS_BYTE))
  data->xfer = vz89x_smbus_xfer;
 else
  return -EOPNOTSUPP;

 of_id = of_match_device(vz89x_dt_ids, &client->dev);
 if (!of_id)
  chip_id = id->driver_data;
 else
  chip_id = (unsigned long)of_id->data;

 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->chip = &vz89x_chips[chip_id];
 data->last_update = jiffies - HZ;
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &vz89x_info;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;

 indio_dev->channels = data->chip->channels;
 indio_dev->num_channels = data->chip->num_channels;

 return devm_iio_device_register(&client->dev, indio_dev);
}
