
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int available_scan_masks; int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct hdc100x_data {int lock; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int HDC100X_REG_CONFIG_ACQ_MODE ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int *,int ,int *) ;
 int hdc100x_channels ;
 int hdc100x_info ;
 int ** hdc100x_int_time ;
 int hdc100x_scan_masks ;
 int hdc100x_set_it_time (struct hdc100x_data*,int,int ) ;
 int hdc100x_trigger_handler ;
 int hdc100x_update_config (struct hdc100x_data*,int ,int ) ;
 int hdc_buffer_setup_ops ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct hdc100x_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int hdc100x_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct hdc100x_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_WORD_DATA |
         I2C_FUNC_SMBUS_BYTE | I2C_FUNC_I2C))
  return -EOPNOTSUPP;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &hdc100x_info;

 indio_dev->channels = hdc100x_channels;
 indio_dev->num_channels = ARRAY_SIZE(hdc100x_channels);
 indio_dev->available_scan_masks = hdc100x_scan_masks;


 hdc100x_set_it_time(data, 0, hdc100x_int_time[0][0]);
 hdc100x_set_it_time(data, 1, hdc100x_int_time[1][0]);
 hdc100x_update_config(data, HDC100X_REG_CONFIG_ACQ_MODE, 0);

 ret = devm_iio_triggered_buffer_setup(&client->dev,
      indio_dev, ((void*)0),
      hdc100x_trigger_handler,
      &hdc_buffer_setup_ops);
 if (ret < 0) {
  dev_err(&client->dev, "iio triggered buffer setup failed\n");
  return ret;
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
