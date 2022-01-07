
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mb1232_data {int irqnr; int ranging; int lock; struct i2c_client* client; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; TYPE_1__ dev; int name; int * info; } ;
struct i2c_device_id {int name; } ;
struct device {int of_node; } ;
struct i2c_client {int adapter; struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int INDIO_DIRECT_MODE ;
 int IRQF_TRIGGER_FALLING ;
 int dev_err (struct device*,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (struct device*,struct iio_dev*,int ,int ,int *) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct iio_dev*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct mb1232_data* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int irq_of_parse_and_map (int ,int ) ;
 int mb1232_channels ;
 int mb1232_handle_irq ;
 int mb1232_info ;
 int mb1232_trigger_handler ;
 int mutex_init (int *) ;

__attribute__((used)) static int mb1232_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct mb1232_data *data;
 int ret;
 struct device *dev = &client->dev;

 if (!i2c_check_functionality(client->adapter,
     I2C_FUNC_SMBUS_READ_BYTE |
     I2C_FUNC_SMBUS_WRITE_BYTE))
  return -ENODEV;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 indio_dev->info = &mb1232_info;
 indio_dev->name = id->name;
 indio_dev->dev.parent = dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = mb1232_channels;
 indio_dev->num_channels = ARRAY_SIZE(mb1232_channels);

 mutex_init(&data->lock);

 init_completion(&data->ranging);

 data->irqnr = irq_of_parse_and_map(dev->of_node, 0);
 if (data->irqnr <= 0) {

  data->irqnr = -1;
 } else {
  ret = devm_request_irq(dev, data->irqnr, mb1232_handle_irq,
    IRQF_TRIGGER_FALLING, id->name, indio_dev);
  if (ret < 0) {
   dev_err(dev, "request_irq: %d\n", ret);
   return ret;
  }
 }

 ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
   iio_pollfunc_store_time, mb1232_trigger_handler, ((void*)0));
 if (ret < 0) {
  dev_err(dev, "setup of iio triggered buffer failed\n");
  return ret;
 }

 return devm_iio_device_register(dev, indio_dev);
}
