
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max30100_data {int regmap; int lock; struct i2c_client* client; struct iio_dev* indio_dev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; TYPE_1__ dev; int * setup_ops; int available_scan_masks; int num_channels; int * info; int channels; int name; } ;
struct iio_buffer {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int MAX30100_DRV_NAME ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct iio_buffer* devm_iio_kfifo_allocate (int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;
 int iio_device_register (struct iio_dev*) ;
 struct max30100_data* iio_priv (struct iio_dev*) ;
 int max30100_buffer_setup_ops ;
 int max30100_channels ;
 int max30100_chip_init (struct max30100_data*) ;
 int max30100_info ;
 int max30100_interrupt_handler ;
 int max30100_regmap_config ;
 int max30100_scan_masks ;
 int max30100_set_powermode (struct max30100_data*,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int max30100_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct max30100_data *data;
 struct iio_buffer *buffer;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 buffer = devm_iio_kfifo_allocate(&client->dev);
 if (!buffer)
  return -ENOMEM;

 iio_device_attach_buffer(indio_dev, buffer);

 indio_dev->name = MAX30100_DRV_NAME;
 indio_dev->channels = max30100_channels;
 indio_dev->info = &max30100_info;
 indio_dev->num_channels = ARRAY_SIZE(max30100_channels);
 indio_dev->available_scan_masks = max30100_scan_masks;
 indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
 indio_dev->setup_ops = &max30100_buffer_setup_ops;
 indio_dev->dev.parent = &client->dev;

 data = iio_priv(indio_dev);
 data->indio_dev = indio_dev;
 data->client = client;

 mutex_init(&data->lock);
 i2c_set_clientdata(client, indio_dev);

 data->regmap = devm_regmap_init_i2c(client, &max30100_regmap_config);
 if (IS_ERR(data->regmap)) {
  dev_err(&client->dev, "regmap initialization failed.\n");
  return PTR_ERR(data->regmap);
 }
 max30100_set_powermode(data, 0);

 ret = max30100_chip_init(data);
 if (ret)
  return ret;

 if (client->irq <= 0) {
  dev_err(&client->dev, "no valid irq defined\n");
  return -EINVAL;
 }
 ret = devm_request_threaded_irq(&client->dev, client->irq,
     ((void*)0), max30100_interrupt_handler,
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     "max30100_irq", indio_dev);
 if (ret) {
  dev_err(&client->dev, "request irq (%d) failed\n", client->irq);
  return ret;
 }

 return iio_device_register(indio_dev);
}
