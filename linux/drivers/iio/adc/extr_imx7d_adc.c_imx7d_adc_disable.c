
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7d_adc {int vref; int clk; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 struct imx7d_adc* iio_priv (struct iio_dev*) ;
 int imx7d_adc_power_down (struct imx7d_adc*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int imx7d_adc_disable(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct imx7d_adc *info = iio_priv(indio_dev);

 imx7d_adc_power_down(info);

 clk_disable_unprepare(info->clk);
 regulator_disable(info->vref);

 return 0;
}
