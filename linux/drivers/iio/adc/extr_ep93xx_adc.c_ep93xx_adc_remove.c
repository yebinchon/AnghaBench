
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ep93xx_adc_priv {int clk; } ;


 int clk_disable (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ep93xx_adc_priv* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ep93xx_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *iiodev = platform_get_drvdata(pdev);
 struct ep93xx_adc_priv *priv = iio_priv(iiodev);

 iio_device_unregister(iiodev);
 clk_disable(priv->clk);

 return 0;
}
