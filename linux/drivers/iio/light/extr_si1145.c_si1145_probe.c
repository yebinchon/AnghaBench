
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct si1145_data {int cmdlock; int lock; TYPE_2__* part_info; struct i2c_client* client; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int modes; int info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; int name; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;
struct TYPE_4__ {int part; int iio_info; int num_channels; int channels; } ;


 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int SI1145_REG_PART_ID ;
 int SI1145_REG_REV_ID ;
 int SI1145_REG_SEQ_ID ;
 int dev_err (int *,char*,int,int) ;
 int dev_info (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int *,int ,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct si1145_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int si1145_buffer_setup_ops ;
 int si1145_initialize (struct si1145_data*) ;
 TYPE_2__* si1145_part_info ;
 int si1145_probe_trigger (struct iio_dev*) ;
 int si1145_trigger_handler ;

__attribute__((used)) static int si1145_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct si1145_data *data;
 struct iio_dev *indio_dev;
 u8 part_id, rev_id, seq_id;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->part_info = &si1145_part_info[id->driver_data];

 part_id = ret = i2c_smbus_read_byte_data(data->client,
       SI1145_REG_PART_ID);
 if (ret < 0)
  return ret;
 rev_id = ret = i2c_smbus_read_byte_data(data->client,
      SI1145_REG_REV_ID);
 if (ret < 0)
  return ret;
 seq_id = ret = i2c_smbus_read_byte_data(data->client,
      SI1145_REG_SEQ_ID);
 if (ret < 0)
  return ret;
 dev_info(&client->dev, "device ID part %#02hhx rev %#02hhx seq %#02hhx\n",
   part_id, rev_id, seq_id);
 if (part_id != data->part_info->part) {
  dev_err(&client->dev, "part ID mismatch got %#02hhx, expected %#02x\n",
    part_id, data->part_info->part);
  return -ENODEV;
 }

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = id->name;
 indio_dev->channels = data->part_info->channels;
 indio_dev->num_channels = data->part_info->num_channels;
 indio_dev->info = data->part_info->iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 mutex_init(&data->lock);
 mutex_init(&data->cmdlock);

 ret = si1145_initialize(data);
 if (ret < 0)
  return ret;

 ret = devm_iio_triggered_buffer_setup(&client->dev,
  indio_dev, ((void*)0),
  si1145_trigger_handler, &si1145_buffer_setup_ops);
 if (ret < 0)
  return ret;

 if (client->irq) {
  ret = si1145_probe_trigger(indio_dev);
  if (ret < 0)
   return ret;
 } else {
  dev_info(&client->dev, "no irq, using polling\n");
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
