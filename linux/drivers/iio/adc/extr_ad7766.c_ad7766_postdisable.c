
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7766 {int reg; int mclk; int pd_gpio; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (int ) ;
 int gpiod_set_value (int ,int) ;
 struct ad7766* iio_priv (struct iio_dev*) ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int ad7766_postdisable(struct iio_dev *indio_dev)
{
 struct ad7766 *ad7766 = iio_priv(indio_dev);

 gpiod_set_value(ad7766->pd_gpio, 1);





 msleep(20);

 clk_disable_unprepare(ad7766->mclk);
 regulator_bulk_disable(ARRAY_SIZE(ad7766->reg), ad7766->reg);

 return 0;
}
