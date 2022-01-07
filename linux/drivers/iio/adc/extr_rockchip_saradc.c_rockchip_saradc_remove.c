
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_saradc {int vref; int pclk; int clk; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct rockchip_saradc* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int rockchip_saradc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct rockchip_saradc *info = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 clk_disable_unprepare(info->clk);
 clk_disable_unprepare(info->pclk);
 regulator_disable(info->vref);

 return 0;
}
