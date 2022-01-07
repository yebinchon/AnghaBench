
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si1133_data {int mutex; struct i2c_client* client; int regmap; int completion; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int irq; int name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,int ,int) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct si1133_data* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int si1133_channels ;
 int si1133_info ;
 int si1133_initialize (struct si1133_data*) ;
 int si1133_regmap_config ;
 int si1133_threaded_irq_handler ;
 int si1133_validate_ids (struct iio_dev*) ;

__attribute__((used)) static int si1133_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct si1133_data *data;
 struct iio_dev *iio_dev;
 int err;

 iio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!iio_dev)
  return -ENOMEM;

 data = iio_priv(iio_dev);

 init_completion(&data->completion);

 data->regmap = devm_regmap_init_i2c(client, &si1133_regmap_config);
 if (IS_ERR(data->regmap)) {
  err = PTR_ERR(data->regmap);
  dev_err(&client->dev, "Failed to initialise regmap: %d\n", err);
  return err;
 }

 i2c_set_clientdata(client, iio_dev);
 data->client = client;

 iio_dev->dev.parent = &client->dev;
 iio_dev->name = id->name;
 iio_dev->channels = si1133_channels;
 iio_dev->num_channels = ARRAY_SIZE(si1133_channels);
 iio_dev->info = &si1133_info;
 iio_dev->modes = INDIO_DIRECT_MODE;

 mutex_init(&data->mutex);

 err = si1133_validate_ids(iio_dev);
 if (err)
  return err;

 err = si1133_initialize(data);
 if (err) {
  dev_err(&client->dev,
   "Error when initializing chip: %d\n", err);
  return err;
 }

 if (!client->irq) {
  dev_err(&client->dev,
   "Required interrupt not provided, cannot proceed\n");
  return -EINVAL;
 }

 err = devm_request_threaded_irq(&client->dev, client->irq,
     ((void*)0),
     si1133_threaded_irq_handler,
     IRQF_ONESHOT | IRQF_SHARED,
     client->name, iio_dev);
 if (err) {
  dev_warn(&client->dev, "Request irq %d failed: %i\n",
    client->irq, err);
  return err;
 }

 return devm_iio_device_register(&client->dev, iio_dev);
}
