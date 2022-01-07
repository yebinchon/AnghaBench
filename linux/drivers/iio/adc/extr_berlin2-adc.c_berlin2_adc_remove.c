
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct berlin2_adc_priv {int regmap; } ;


 int BERLIN2_SM_CTRL ;
 int BERLIN2_SM_CTRL_ADC_POWER ;
 int iio_device_unregister (struct iio_dev*) ;
 struct berlin2_adc_priv* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int berlin2_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct berlin2_adc_priv *priv = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);


 regmap_update_bits(priv->regmap, BERLIN2_SM_CTRL,
      BERLIN2_SM_CTRL_ADC_POWER, 0);

 return 0;
}
