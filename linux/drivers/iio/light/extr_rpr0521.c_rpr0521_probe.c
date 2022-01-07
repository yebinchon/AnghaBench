
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rpr0521_data {TYPE_3__* drdy_trigger0; int lock; struct regmap* regmap; struct i2c_client* client; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int * parent; } ;
struct iio_dev {TYPE_2__ dev; int available_scan_masks; int id; int name; int modes; int num_channels; int channels; int * info; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {int * ops; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int RPR0521_DRV_NAME ;
 int RPR0521_IRQ_NAME ;
 int RPR0521_SLEEP_DELAY_MS ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 TYPE_3__* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 int devm_iio_trigger_register (int *,TYPE_3__*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int ,int ,int *) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int ,int ,int,int ,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct rpr0521_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_set_drvdata (TYPE_3__*,struct iio_dev*) ;
 int mutex_init (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_use_autosuspend (int *) ;
 int rpr0521_available_scan_masks ;
 int rpr0521_buffer_setup_ops ;
 int rpr0521_channels ;
 int rpr0521_drdy_irq_handler ;
 int rpr0521_drdy_irq_thread ;
 int rpr0521_info ;
 int rpr0521_init (struct rpr0521_data*) ;
 int rpr0521_poweroff (struct rpr0521_data*) ;
 int rpr0521_regmap_config ;
 int rpr0521_trigger_consumer_handler ;
 int rpr0521_trigger_consumer_store_time ;
 int rpr0521_trigger_ops ;

__attribute__((used)) static int rpr0521_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct rpr0521_data *data;
 struct iio_dev *indio_dev;
 struct regmap *regmap;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 regmap = devm_regmap_init_i2c(client, &rpr0521_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "regmap_init failed!\n");
  return PTR_ERR(regmap);
 }

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->regmap = regmap;

 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &rpr0521_info;
 indio_dev->name = RPR0521_DRV_NAME;
 indio_dev->channels = rpr0521_channels;
 indio_dev->num_channels = ARRAY_SIZE(rpr0521_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = rpr0521_init(data);
 if (ret < 0) {
  dev_err(&client->dev, "rpr0521 chip init failed\n");
  return ret;
 }

 ret = pm_runtime_set_active(&client->dev);
 if (ret < 0)
  goto err_poweroff;

 pm_runtime_enable(&client->dev);
 pm_runtime_set_autosuspend_delay(&client->dev, RPR0521_SLEEP_DELAY_MS);
 pm_runtime_use_autosuspend(&client->dev);







 if (client->irq) {

  data->drdy_trigger0 = devm_iio_trigger_alloc(
   indio_dev->dev.parent,
   "%s-dev%d", indio_dev->name, indio_dev->id);
  if (!data->drdy_trigger0) {
   ret = -ENOMEM;
   goto err_pm_disable;
  }
  data->drdy_trigger0->dev.parent = indio_dev->dev.parent;
  data->drdy_trigger0->ops = &rpr0521_trigger_ops;
  indio_dev->available_scan_masks = rpr0521_available_scan_masks;
  iio_trigger_set_drvdata(data->drdy_trigger0, indio_dev);


  ret = devm_request_threaded_irq(&client->dev, client->irq,
   rpr0521_drdy_irq_handler, rpr0521_drdy_irq_thread,
   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
   RPR0521_IRQ_NAME, indio_dev);
  if (ret < 0) {
   dev_err(&client->dev, "request irq %d for trigger0 failed\n",
    client->irq);
   goto err_pm_disable;
   }

  ret = devm_iio_trigger_register(indio_dev->dev.parent,
      data->drdy_trigger0);
  if (ret) {
   dev_err(&client->dev, "iio trigger register failed\n");
   goto err_pm_disable;
  }







  ret = devm_iio_triggered_buffer_setup(indio_dev->dev.parent,
   indio_dev,
   rpr0521_trigger_consumer_store_time,
   rpr0521_trigger_consumer_handler,
   &rpr0521_buffer_setup_ops);
  if (ret < 0) {
   dev_err(&client->dev, "iio triggered buffer setup failed\n");
   goto err_pm_disable;
  }
 }

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err_pm_disable;

 return 0;

err_pm_disable:
 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);
err_poweroff:
 rpr0521_poweroff(data);

 return ret;
}
