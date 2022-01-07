
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isl29125_data {int conf1; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int ISL29125_CONF1 ;
 int ISL29125_DEVICE_ID ;
 int ISL29125_DRV_NAME ;
 int ISL29125_ID ;
 int ISL29125_MODE_PD ;
 int ISL29125_MODE_RANGE ;
 int ISL29125_STATUS ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct isl29125_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int isl29125_buffer_setup_ops ;
 int isl29125_channels ;
 int isl29125_info ;
 int isl29125_trigger_handler ;

__attribute__((used)) static int isl29125_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct isl29125_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &isl29125_info;
 indio_dev->name = ISL29125_DRV_NAME;
 indio_dev->channels = isl29125_channels;
 indio_dev->num_channels = ARRAY_SIZE(isl29125_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = i2c_smbus_read_byte_data(data->client, ISL29125_DEVICE_ID);
 if (ret < 0)
  return ret;
 if (ret != ISL29125_ID)
  return -ENODEV;

 data->conf1 = ISL29125_MODE_PD | ISL29125_MODE_RANGE;
 ret = i2c_smbus_write_byte_data(data->client, ISL29125_CONF1,
  data->conf1);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(data->client, ISL29125_STATUS, 0);
 if (ret < 0)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
  isl29125_trigger_handler, &isl29125_buffer_setup_ops);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto buffer_cleanup;

 return 0;

buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
 return ret;
}
