
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lmp91000_data {TYPE_3__* trig; int cb_buffer; int adc_chan; int completion; struct device* dev; int regmap; } ;
struct TYPE_7__ {struct device* parent; } ;
struct iio_dev {int id; int name; int modes; TYPE_1__ dev; int num_channels; int channels; int * info; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_9__ {TYPE_2__ dev; int * ops; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int LMP91000_DRV_NAME ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 TYPE_3__* devm_iio_trigger_alloc (struct device*,char*,int ,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_channel_cb_get_channels (int ) ;
 int iio_channel_cb_get_iio_dev (int ) ;
 int iio_channel_get_all_cb (struct device*,int *,struct iio_dev*) ;
 int iio_channel_release_all_cb (int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct lmp91000_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_register (TYPE_3__*) ;
 int iio_trigger_set_immutable (int ,TYPE_3__*) ;
 int iio_trigger_unregister (TYPE_3__*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;
 int init_completion (int *) ;
 int lmp91000_buffer_cb ;
 int lmp91000_buffer_handler ;
 int lmp91000_buffer_setup_ops ;
 int lmp91000_channels ;
 int lmp91000_info ;
 int lmp91000_read_config (struct lmp91000_data*) ;
 int lmp91000_regmap_config ;
 int lmp91000_trigger_ops ;

__attribute__((used)) static int lmp91000_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct lmp91000_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 indio_dev->info = &lmp91000_info;
 indio_dev->channels = lmp91000_channels;
 indio_dev->num_channels = ARRAY_SIZE(lmp91000_channels);
 indio_dev->name = LMP91000_DRV_NAME;
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 i2c_set_clientdata(client, indio_dev);

 data = iio_priv(indio_dev);
 data->dev = dev;
 data->regmap = devm_regmap_init_i2c(client, &lmp91000_regmap_config);
 if (IS_ERR(data->regmap)) {
  dev_err(dev, "regmap initialization failed.\n");
  return PTR_ERR(data->regmap);
 }

 data->trig = devm_iio_trigger_alloc(data->dev, "%s-mux%d",
         indio_dev->name, indio_dev->id);
 if (!data->trig) {
  dev_err(dev, "cannot allocate iio trigger.\n");
  return -ENOMEM;
 }

 data->trig->ops = &lmp91000_trigger_ops;
 data->trig->dev.parent = dev;
 init_completion(&data->completion);

 ret = lmp91000_read_config(data);
 if (ret)
  return ret;

 ret = iio_trigger_set_immutable(iio_channel_cb_get_iio_dev(data->cb_buffer),
     data->trig);
 if (ret) {
  dev_err(dev, "cannot set immutable trigger.\n");
  return ret;
 }

 ret = iio_trigger_register(data->trig);
 if (ret) {
  dev_err(dev, "cannot register iio trigger.\n");
  return ret;
 }

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      &lmp91000_buffer_handler,
      &lmp91000_buffer_setup_ops);
 if (ret)
  goto error_unreg_trigger;

 data->cb_buffer = iio_channel_get_all_cb(dev, &lmp91000_buffer_cb,
       indio_dev);

 if (IS_ERR(data->cb_buffer)) {
  if (PTR_ERR(data->cb_buffer) == -ENODEV)
   ret = -EPROBE_DEFER;
  else
   ret = PTR_ERR(data->cb_buffer);

  goto error_unreg_buffer;
 }

 data->adc_chan = iio_channel_cb_get_channels(data->cb_buffer);

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_unreg_cb_buffer;

 return 0;

error_unreg_cb_buffer:
 iio_channel_release_all_cb(data->cb_buffer);

error_unreg_buffer:
 iio_triggered_buffer_cleanup(indio_dev);

error_unreg_trigger:
 iio_trigger_unregister(data->trig);

 return ret;
}
