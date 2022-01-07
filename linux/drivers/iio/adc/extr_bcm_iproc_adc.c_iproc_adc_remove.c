
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iproc_adc_priv {int adc_clk; } ;
struct iio_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct iproc_adc_priv* iio_priv (struct iio_dev*) ;
 int iproc_adc_disable (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int iproc_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iproc_adc_disable(indio_dev);
 clk_disable_unprepare(adc_priv->adc_clk);

 return 0;
}
