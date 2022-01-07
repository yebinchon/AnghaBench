
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lpc18xx_adc {int vref; int clk; scalar_t__ base; } ;
struct iio_dev {int dummy; } ;


 scalar_t__ LPC18XX_ADC_CR ;
 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct lpc18xx_adc* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int lpc18xx_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct lpc18xx_adc *adc = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 writel(0, adc->base + LPC18XX_ADC_CR);
 clk_disable_unprepare(adc->clk);
 regulator_disable(adc->vref);

 return 0;
}
