
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* parent; int of_node; } ;
struct iio_dev {int * info; int modes; int channels; int num_channels; TYPE_1__ dev; int name; } ;
struct i2c_device_id {int driver_data; int name; } ;
struct TYPE_6__ {int of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct ds4424_data {int vcc_reg; int lock; struct i2c_client* client; } ;


 int DS4422_MAX_DAC_CHANNELS ;
 int DS4424_MAX_DAC_CHANNELS ;
 int ENOMEM ;
 int ENXIO ;


 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_regulator_get (TYPE_2__*,char*) ;
 int ds4424_channels ;
 int ds4424_info ;
 int ds4424_verify_chip (struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ds4424_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ds4424_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ds4424_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&client->dev, "iio dev alloc failed.\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 indio_dev->name = id->name;
 indio_dev->dev.of_node = client->dev.of_node;
 indio_dev->dev.parent = &client->dev;

 data->vcc_reg = devm_regulator_get(&client->dev, "vcc");
 if (IS_ERR(data->vcc_reg)) {
  dev_err(&client->dev,
   "Failed to get vcc-supply regulator. err: %ld\n",
    PTR_ERR(data->vcc_reg));
  return PTR_ERR(data->vcc_reg);
 }

 mutex_init(&data->lock);
 ret = regulator_enable(data->vcc_reg);
 if (ret < 0) {
  dev_err(&client->dev,
    "Unable to enable the regulator.\n");
  return ret;
 }

 usleep_range(1000, 1200);
 ret = ds4424_verify_chip(indio_dev);
 if (ret < 0)
  goto fail;

 switch (id->driver_data) {
 case 129:
  indio_dev->num_channels = DS4422_MAX_DAC_CHANNELS;
  break;
 case 128:
  indio_dev->num_channels = DS4424_MAX_DAC_CHANNELS;
  break;
 default:
  dev_err(&client->dev,
    "ds4424: Invalid chip id.\n");
  ret = -ENXIO;
  goto fail;
 }

 indio_dev->channels = ds4424_channels;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &ds4424_info;

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev,
    "iio_device_register failed. ret: %d\n", ret);
  goto fail;
 }

 return ret;

fail:
 regulator_disable(data->vcc_reg);
 return ret;
}
