
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int vref; int vdd; } ;
struct iio_dev {int dummy; } ;


 int regulator_disable (int ) ;
 int zpa2326_dbg (struct iio_dev const*,char*) ;

__attribute__((used)) static void zpa2326_power_off(const struct iio_dev *indio_dev,
         const struct zpa2326_private *private)
{
 regulator_disable(private->vdd);
 regulator_disable(private->vref);

 zpa2326_dbg(indio_dev, "powered off");
}
