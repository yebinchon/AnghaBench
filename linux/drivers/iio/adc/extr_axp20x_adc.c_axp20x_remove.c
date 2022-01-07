
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct axp20x_adc_iio {int regmap; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ adc_en2; } ;


 int AXP20X_ADC_EN1 ;
 int AXP20X_ADC_EN2 ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct axp20x_adc_iio* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int axp20x_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct axp20x_adc_iio *info = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_map_array_unregister(indio_dev);

 regmap_write(info->regmap, AXP20X_ADC_EN1, 0);

 if (info->data->adc_en2)
  regmap_write(info->regmap, AXP20X_ADC_EN2, 0);

 return 0;
}
