
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct axp288_adc_info {scalar_t__ irq; int regmap; } ;
struct axp20x_dev {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int axp288_adc_channels ;
 int axp288_adc_default_maps ;
 int axp288_adc_iio_info ;
 int axp288_adc_initialize (struct axp288_adc_info*) ;
 int dev_err (TYPE_2__*,char*) ;
 struct axp20x_dev* dev_get_drvdata (int ) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_map_array_register (struct iio_dev*,int ) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct axp288_adc_info* iio_priv (struct iio_dev*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int axp288_adc_probe(struct platform_device *pdev)
{
 int ret;
 struct axp288_adc_info *info;
 struct iio_dev *indio_dev;
 struct axp20x_dev *axp20x = dev_get_drvdata(pdev->dev.parent);

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*info));
 if (!indio_dev)
  return -ENOMEM;

 info = iio_priv(indio_dev);
 info->irq = platform_get_irq(pdev, 0);
 if (info->irq < 0)
  return info->irq;
 platform_set_drvdata(pdev, indio_dev);
 info->regmap = axp20x->regmap;




 ret = axp288_adc_initialize(info);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable ADC device\n");
  return ret;
 }

 indio_dev->dev.parent = &pdev->dev;
 indio_dev->name = pdev->name;
 indio_dev->channels = axp288_adc_channels;
 indio_dev->num_channels = ARRAY_SIZE(axp288_adc_channels);
 indio_dev->info = &axp288_adc_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 ret = iio_map_array_register(indio_dev, axp288_adc_default_maps);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "unable to register iio device\n");
  goto err_array_unregister;
 }
 return 0;

err_array_unregister:
 iio_map_array_unregister(indio_dev);

 return ret;
}
