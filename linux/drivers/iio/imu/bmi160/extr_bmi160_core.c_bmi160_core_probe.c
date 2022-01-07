
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; TYPE_1__ dev; int * info; int modes; int num_channels; int channels; } ;
struct device {int of_node; } ;
struct bmi160_data {struct regmap* regmap; } ;
typedef enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;


 scalar_t__ ACPI_HANDLE (struct device*) ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int bmi160_channels ;
 int bmi160_chip_init (struct bmi160_data*,int) ;
 int bmi160_chip_uninit ;
 int bmi160_get_irq (int ,int*) ;
 int bmi160_info ;
 char* bmi160_match_acpi_device (struct device*) ;
 int bmi160_setup_irq (struct iio_dev*,int,int) ;
 int bmi160_trigger_handler ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 int devm_add_action_or_reset (struct device*,int ,struct bmi160_data*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (struct device*,struct iio_dev*,int ,int ,int *) ;
 int iio_pollfunc_store_time ;
 struct bmi160_data* iio_priv (struct iio_dev*) ;

int bmi160_core_probe(struct device *dev, struct regmap *regmap,
        const char *name, bool use_spi)
{
 struct iio_dev *indio_dev;
 struct bmi160_data *data;
 int irq;
 enum bmi160_int_pin int_pin;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 dev_set_drvdata(dev, indio_dev);
 data->regmap = regmap;

 ret = bmi160_chip_init(data, use_spi);
 if (ret)
  return ret;

 ret = devm_add_action_or_reset(dev, bmi160_chip_uninit, data);
 if (ret)
  return ret;

 if (!name && ACPI_HANDLE(dev))
  name = bmi160_match_acpi_device(dev);

 indio_dev->dev.parent = dev;
 indio_dev->channels = bmi160_channels;
 indio_dev->num_channels = ARRAY_SIZE(bmi160_channels);
 indio_dev->name = name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &bmi160_info;

 ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
           iio_pollfunc_store_time,
           bmi160_trigger_handler, ((void*)0));
 if (ret)
  return ret;

 irq = bmi160_get_irq(dev->of_node, &int_pin);
 if (irq > 0) {
  ret = bmi160_setup_irq(indio_dev, irq, int_pin);
  if (ret)
   dev_err(&indio_dev->dev, "Failed to setup IRQ %d\n",
    irq);
 } else {
  dev_info(&indio_dev->dev, "Not setting up IRQ trigger\n");
 }

 return devm_iio_device_register(dev, indio_dev);
}
