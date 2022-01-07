
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7d_adc {int vref; int dev; int clk; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,...) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 struct imx7d_adc* iio_priv (struct iio_dev*) ;
 int imx7d_adc_hw_init (struct imx7d_adc*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int imx7d_adc_enable(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct imx7d_adc *info = iio_priv(indio_dev);
 int ret;

 ret = regulator_enable(info->vref);
 if (ret) {
  dev_err(info->dev,
   "Can't enable adc reference top voltage, err = %d\n",
   ret);
  return ret;
 }

 ret = clk_prepare_enable(info->clk);
 if (ret) {
  dev_err(info->dev,
   "Could not prepare or enable clock.\n");
  regulator_disable(info->vref);
  return ret;
 }

 imx7d_adc_hw_init(info);

 return 0;
}
