
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mxc4005_data {TYPE_3__* dready_trig; int mutex; struct regmap* regmap; int * dev; } ;
struct TYPE_8__ {int * parent; } ;
struct iio_dev {TYPE_3__* trig; int id; int name; int * info; int modes; int available_scan_masks; int num_channels; int channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
struct TYPE_9__ {int * parent; } ;
struct TYPE_10__ {int * ops; TYPE_2__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int MXC4005_DRV_NAME ;
 int MXC4005_IRQ_NAME ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 TYPE_3__* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 int devm_iio_trigger_register (int *,TYPE_3__*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int ,int ,int *) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int ,int *,int,int ,TYPE_3__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct mxc4005_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_generic_data_rdy_poll ;
 int iio_trigger_get (TYPE_3__*) ;
 int iio_trigger_set_drvdata (TYPE_3__*,struct iio_dev*) ;
 int mutex_init (int *) ;
 int mxc4005_channels ;
 int mxc4005_chip_init (struct mxc4005_data*) ;
 int mxc4005_info ;
 int mxc4005_regmap_config ;
 int mxc4005_scan_masks ;
 int mxc4005_trigger_handler ;
 int mxc4005_trigger_ops ;

__attribute__((used)) static int mxc4005_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct mxc4005_data *data;
 struct iio_dev *indio_dev;
 struct regmap *regmap;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 regmap = devm_regmap_init_i2c(client, &mxc4005_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "failed to initialize regmap\n");
  return PTR_ERR(regmap);
 }

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->dev = &client->dev;
 data->regmap = regmap;

 ret = mxc4005_chip_init(data);
 if (ret < 0) {
  dev_err(&client->dev, "failed to initialize chip\n");
  return ret;
 }

 mutex_init(&data->mutex);

 indio_dev->dev.parent = &client->dev;
 indio_dev->channels = mxc4005_channels;
 indio_dev->num_channels = ARRAY_SIZE(mxc4005_channels);
 indio_dev->available_scan_masks = mxc4005_scan_masks;
 indio_dev->name = MXC4005_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &mxc4005_info;

 ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev,
      iio_pollfunc_store_time,
      mxc4005_trigger_handler,
      ((void*)0));
 if (ret < 0) {
  dev_err(&client->dev,
   "failed to setup iio triggered buffer\n");
  return ret;
 }

 if (client->irq > 0) {
  data->dready_trig = devm_iio_trigger_alloc(&client->dev,
          "%s-dev%d",
          indio_dev->name,
          indio_dev->id);
  if (!data->dready_trig)
   return -ENOMEM;

  ret = devm_request_threaded_irq(&client->dev, client->irq,
      iio_trigger_generic_data_rdy_poll,
      ((void*)0),
      IRQF_TRIGGER_FALLING |
      IRQF_ONESHOT,
      MXC4005_IRQ_NAME,
      data->dready_trig);
  if (ret) {
   dev_err(&client->dev,
    "failed to init threaded irq\n");
   return ret;
  }

  data->dready_trig->dev.parent = &client->dev;
  data->dready_trig->ops = &mxc4005_trigger_ops;
  iio_trigger_set_drvdata(data->dready_trig, indio_dev);
  indio_dev->trig = data->dready_trig;
  iio_trigger_get(indio_dev->trig);
  ret = devm_iio_trigger_register(&client->dev,
      data->dready_trig);
  if (ret) {
   dev_err(&client->dev,
    "failed to register trigger\n");
   return ret;
  }
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
