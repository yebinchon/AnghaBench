
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max30102_data {int chip_id; int regmap; int lock; struct i2c_client* client; struct iio_dev* indio_dev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int available_scan_masks; void* num_channels; void* channels; TYPE_1__ dev; int * setup_ops; int * info; int name; } ;
struct iio_buffer {int dummy; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 void* ARRAY_SIZE (void*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int MAX30102_DRV_NAME ;
 unsigned int MAX30102_PART_NUMBER ;
 int MAX30102_REG_MODE_CONFIG_MODE_NONE ;
 int MAX30102_REG_PART_ID ;
 int MAX30102_REG_REV_ID ;
 int PTR_ERR (int ) ;
 int dev_dbg (int *,char*,unsigned int) ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct iio_buffer* devm_iio_kfifo_allocate (int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;
 int iio_device_register (struct iio_dev*) ;
 struct max30102_data* iio_priv (struct iio_dev*) ;

 int max30102_buffer_setup_ops ;
 void* max30102_channels ;
 int max30102_chip_init (struct max30102_data*) ;
 int max30102_info ;
 int max30102_interrupt_handler ;
 int max30102_regmap_config ;
 int max30102_scan_masks ;
 int max30102_set_powermode (struct max30102_data*,int ,int) ;

 void* max30105_channels ;
 int max30105_scan_masks ;
 int mutex_init (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max30102_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct max30102_data *data;
 struct iio_buffer *buffer;
 struct iio_dev *indio_dev;
 int ret;
 unsigned int reg;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 buffer = devm_iio_kfifo_allocate(&client->dev);
 if (!buffer)
  return -ENOMEM;

 iio_device_attach_buffer(indio_dev, buffer);

 indio_dev->name = MAX30102_DRV_NAME;
 indio_dev->info = &max30102_info;
 indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
 indio_dev->setup_ops = &max30102_buffer_setup_ops;
 indio_dev->dev.parent = &client->dev;

 data = iio_priv(indio_dev);
 data->indio_dev = indio_dev;
 data->client = client;
 data->chip_id = id->driver_data;

 mutex_init(&data->lock);
 i2c_set_clientdata(client, indio_dev);

 switch (data->chip_id) {
 case 128:
  indio_dev->channels = max30105_channels;
  indio_dev->num_channels = ARRAY_SIZE(max30105_channels);
  indio_dev->available_scan_masks = max30105_scan_masks;
  break;
 case 129:
  indio_dev->channels = max30102_channels;
  indio_dev->num_channels = ARRAY_SIZE(max30102_channels);
  indio_dev->available_scan_masks = max30102_scan_masks;
  break;
 default:
  return -ENODEV;
 }

 data->regmap = devm_regmap_init_i2c(client, &max30102_regmap_config);
 if (IS_ERR(data->regmap)) {
  dev_err(&client->dev, "regmap initialization failed\n");
  return PTR_ERR(data->regmap);
 }


 ret = regmap_read(data->regmap, MAX30102_REG_PART_ID, &reg);
 if (ret)
  return ret;
 if (reg != MAX30102_PART_NUMBER)
  return -ENODEV;


 ret = regmap_read(data->regmap, MAX30102_REG_REV_ID, &reg);
 if (ret)
  return ret;
 dev_dbg(&client->dev, "max3010x revision %02x\n", reg);


 ret = max30102_set_powermode(data, MAX30102_REG_MODE_CONFIG_MODE_NONE,
         0);
 if (ret)
  return ret;

 ret = max30102_chip_init(data);
 if (ret)
  return ret;

 if (client->irq <= 0) {
  dev_err(&client->dev, "no valid irq defined\n");
  return -EINVAL;
 }

 ret = devm_request_threaded_irq(&client->dev, client->irq,
     ((void*)0), max30102_interrupt_handler,
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     "max30102_irq", indio_dev);
 if (ret) {
  dev_err(&client->dev, "request irq (%d) failed\n", client->irq);
  return ret;
 }

 return iio_device_register(indio_dev);
}
