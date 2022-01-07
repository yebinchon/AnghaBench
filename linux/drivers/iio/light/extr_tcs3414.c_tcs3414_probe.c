
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcs3414_data {int gain; struct i2c_client* client; int timing; int control; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int TCS3414_CONTROL ;
 int TCS3414_CONTROL_POWER ;
 int TCS3414_DRV_NAME ;
 int TCS3414_GAIN ;
 int TCS3414_ID ;
 int TCS3414_INTEG_12MS ;
 int TCS3414_TIMING ;
 int dev_info (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct tcs3414_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int tcs3414_buffer_setup_ops ;
 int tcs3414_channels ;
 int tcs3414_info ;
 int tcs3414_trigger_handler ;

__attribute__((used)) static int tcs3414_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct tcs3414_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &tcs3414_info;
 indio_dev->name = TCS3414_DRV_NAME;
 indio_dev->channels = tcs3414_channels;
 indio_dev->num_channels = ARRAY_SIZE(tcs3414_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = i2c_smbus_read_byte_data(data->client, TCS3414_ID);
 if (ret < 0)
  return ret;

 switch (ret & 0xf0) {
 case 0x00:
  dev_info(&client->dev, "TCS3404 found\n");
  break;
 case 0x10:
  dev_info(&client->dev, "TCS3413/14/15/16 found\n");
  break;
 default:
  return -ENODEV;
 }

 data->control = TCS3414_CONTROL_POWER;
 ret = i2c_smbus_write_byte_data(data->client, TCS3414_CONTROL,
  data->control);
 if (ret < 0)
  return ret;

 data->timing = TCS3414_INTEG_12MS;
 ret = i2c_smbus_write_byte_data(data->client, TCS3414_TIMING,
  data->timing);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(data->client, TCS3414_GAIN);
 if (ret < 0)
  return ret;
 data->gain = ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
  tcs3414_trigger_handler, &tcs3414_buffer_setup_ops);
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
