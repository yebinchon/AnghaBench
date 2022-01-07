
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcs3472_data {int control; int atime; int low_thresh; int high_thresh; int apers; int enable; struct i2c_client* client; int lock; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int name; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_FALLING ;
 int TCS3472_AIHT ;
 int TCS3472_AILT ;
 int TCS3472_ATIME ;
 int TCS3472_CONTROL ;
 int TCS3472_DRV_NAME ;
 int TCS3472_ENABLE ;
 int TCS3472_ENABLE_AEN ;
 int TCS3472_ENABLE_AIEN ;
 int TCS3472_ENABLE_PON ;
 int TCS3472_ID ;
 int TCS3472_PERS ;
 int dev_info (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int free_irq (scalar_t__,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct tcs3472_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int mutex_init (int *) ;
 int request_threaded_irq (scalar_t__,int *,int ,int,int ,struct iio_dev*) ;
 int tcs3472_channels ;
 int tcs3472_event_handler ;
 int tcs3472_info ;
 int tcs3472_trigger_handler ;

__attribute__((used)) static int tcs3472_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct tcs3472_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &tcs3472_info;
 indio_dev->name = TCS3472_DRV_NAME;
 indio_dev->channels = tcs3472_channels;
 indio_dev->num_channels = ARRAY_SIZE(tcs3472_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = i2c_smbus_read_byte_data(data->client, TCS3472_ID);
 if (ret < 0)
  return ret;

 if (ret == 0x44)
  dev_info(&client->dev, "TCS34721/34725 found\n");
 else if (ret == 0x4d)
  dev_info(&client->dev, "TCS34723/34727 found\n");
 else
  return -ENODEV;

 ret = i2c_smbus_read_byte_data(data->client, TCS3472_CONTROL);
 if (ret < 0)
  return ret;
 data->control = ret;

 ret = i2c_smbus_read_byte_data(data->client, TCS3472_ATIME);
 if (ret < 0)
  return ret;
 data->atime = ret;

 ret = i2c_smbus_read_word_data(data->client, TCS3472_AILT);
 if (ret < 0)
  return ret;
 data->low_thresh = ret;

 ret = i2c_smbus_read_word_data(data->client, TCS3472_AIHT);
 if (ret < 0)
  return ret;
 data->high_thresh = ret;

 data->apers = 1;
 ret = i2c_smbus_write_byte_data(data->client, TCS3472_PERS,
     data->apers);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(data->client, TCS3472_ENABLE);
 if (ret < 0)
  return ret;


 data->enable = ret | TCS3472_ENABLE_PON | TCS3472_ENABLE_AEN;
 data->enable &= ~TCS3472_ENABLE_AIEN;
 ret = i2c_smbus_write_byte_data(data->client, TCS3472_ENABLE,
  data->enable);
 if (ret < 0)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
  tcs3472_trigger_handler, ((void*)0));
 if (ret < 0)
  return ret;

 if (client->irq) {
  ret = request_threaded_irq(client->irq, ((void*)0),
        tcs3472_event_handler,
        IRQF_TRIGGER_FALLING | IRQF_SHARED |
        IRQF_ONESHOT,
        client->name, indio_dev);
  if (ret)
   goto buffer_cleanup;
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto free_irq;

 return 0;

free_irq:
 free_irq(client->irq, indio_dev);
buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
 return ret;
}
