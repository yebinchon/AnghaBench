
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct ltr501_data {TYPE_2__* chip_info; struct regmap* regmap; struct regmap* reg_ps_prst; struct regmap* reg_als_prst; struct regmap* reg_ps_rate; struct regmap* reg_als_rate; struct regmap* reg_ps_intr; struct regmap* reg_als_intr; struct regmap* reg_it; int lock_ps; int lock_als; struct i2c_client* client; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {char const* name; int info; int modes; int num_channels; int channels; TYPE_1__ dev; } ;
struct i2c_device_id {char* name; int driver_data; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
struct TYPE_4__ {int partid; int info_no_irq; int no_channels; int channels; int info; } ;


 scalar_t__ ACPI_HANDLE (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int LTR501_PART_ID ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 void* devm_regmap_field_alloc (int *,struct regmap*,int ) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 TYPE_2__* ltr501_chip_info_tbl ;
 int ltr501_init (struct ltr501_data*) ;
 int ltr501_interrupt_handler ;
 char* ltr501_match_acpi_device (int *,int*) ;
 int ltr501_powerdown (struct ltr501_data*) ;
 int ltr501_regmap_config ;
 int ltr501_trigger_handler ;
 int mutex_init (int *) ;
 int reg_field_als_intr ;
 int reg_field_als_prst ;
 int reg_field_als_rate ;
 int reg_field_it ;
 int reg_field_ps_intr ;
 int reg_field_ps_prst ;
 int reg_field_ps_rate ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static int ltr501_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ltr501_data *data;
 struct iio_dev *indio_dev;
 struct regmap *regmap;
 int ret, partid, chip_idx = 0;
 const char *name = ((void*)0);

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 regmap = devm_regmap_init_i2c(client, &ltr501_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "Regmap initialization failed.\n");
  return PTR_ERR(regmap);
 }

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->regmap = regmap;
 mutex_init(&data->lock_als);
 mutex_init(&data->lock_ps);

 data->reg_it = devm_regmap_field_alloc(&client->dev, regmap,
            reg_field_it);
 if (IS_ERR(data->reg_it)) {
  dev_err(&client->dev, "Integ time reg field init failed.\n");
  return PTR_ERR(data->reg_it);
 }

 data->reg_als_intr = devm_regmap_field_alloc(&client->dev, regmap,
           reg_field_als_intr);
 if (IS_ERR(data->reg_als_intr)) {
  dev_err(&client->dev, "ALS intr mode reg field init failed\n");
  return PTR_ERR(data->reg_als_intr);
 }

 data->reg_ps_intr = devm_regmap_field_alloc(&client->dev, regmap,
          reg_field_ps_intr);
 if (IS_ERR(data->reg_ps_intr)) {
  dev_err(&client->dev, "PS intr mode reg field init failed.\n");
  return PTR_ERR(data->reg_ps_intr);
 }

 data->reg_als_rate = devm_regmap_field_alloc(&client->dev, regmap,
           reg_field_als_rate);
 if (IS_ERR(data->reg_als_rate)) {
  dev_err(&client->dev, "ALS samp rate field init failed.\n");
  return PTR_ERR(data->reg_als_rate);
 }

 data->reg_ps_rate = devm_regmap_field_alloc(&client->dev, regmap,
          reg_field_ps_rate);
 if (IS_ERR(data->reg_ps_rate)) {
  dev_err(&client->dev, "PS samp rate field init failed.\n");
  return PTR_ERR(data->reg_ps_rate);
 }

 data->reg_als_prst = devm_regmap_field_alloc(&client->dev, regmap,
           reg_field_als_prst);
 if (IS_ERR(data->reg_als_prst)) {
  dev_err(&client->dev, "ALS prst reg field init failed\n");
  return PTR_ERR(data->reg_als_prst);
 }

 data->reg_ps_prst = devm_regmap_field_alloc(&client->dev, regmap,
          reg_field_ps_prst);
 if (IS_ERR(data->reg_ps_prst)) {
  dev_err(&client->dev, "PS prst reg field init failed.\n");
  return PTR_ERR(data->reg_ps_prst);
 }

 ret = regmap_read(data->regmap, LTR501_PART_ID, &partid);
 if (ret < 0)
  return ret;

 if (id) {
  name = id->name;
  chip_idx = id->driver_data;
 } else if (ACPI_HANDLE(&client->dev)) {
  name = ltr501_match_acpi_device(&client->dev, &chip_idx);
 } else {
  return -ENODEV;
 }

 data->chip_info = &ltr501_chip_info_tbl[chip_idx];

 if ((partid >> 4) != data->chip_info->partid)
  return -ENODEV;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = data->chip_info->info;
 indio_dev->channels = data->chip_info->channels;
 indio_dev->num_channels = data->chip_info->no_channels;
 indio_dev->name = name;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = ltr501_init(data);
 if (ret < 0)
  return ret;

 if (client->irq > 0) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
      ((void*)0), ltr501_interrupt_handler,
      IRQF_TRIGGER_FALLING |
      IRQF_ONESHOT,
      "ltr501_thresh_event",
      indio_dev);
  if (ret) {
   dev_err(&client->dev, "request irq (%d) failed\n",
    client->irq);
   return ret;
  }
 } else {
  indio_dev->info = data->chip_info->info_no_irq;
 }

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      ltr501_trigger_handler, ((void*)0));
 if (ret)
  goto powerdown_on_error;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_unreg_buffer;

 return 0;

error_unreg_buffer:
 iio_triggered_buffer_cleanup(indio_dev);
powerdown_on_error:
 ltr501_powerdown(data);
 return ret;
}
