
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_adc_state {int clk; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct spear_adc_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int spear_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct spear_adc_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 clk_disable_unprepare(st->clk);

 return 0;
}
