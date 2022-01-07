
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad7766 {int pd_gpio; int reg; TYPE_1__* spi; int mclk; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 int gpiod_set_value (int ,int ) ;
 struct ad7766* iio_priv (struct iio_dev*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int ad7766_preenable(struct iio_dev *indio_dev)
{
 struct ad7766 *ad7766 = iio_priv(indio_dev);
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(ad7766->reg), ad7766->reg);
 if (ret < 0) {
  dev_err(&ad7766->spi->dev, "Failed to enable supplies: %d\n",
   ret);
  return ret;
 }

 ret = clk_prepare_enable(ad7766->mclk);
 if (ret < 0) {
  dev_err(&ad7766->spi->dev, "Failed to enable MCLK: %d\n", ret);
  regulator_bulk_disable(ARRAY_SIZE(ad7766->reg), ad7766->reg);
  return ret;
 }

 gpiod_set_value(ad7766->pd_gpio, 0);

 return 0;
}
