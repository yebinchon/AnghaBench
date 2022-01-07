
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int vref; int vdd; } ;
struct iio_dev {int dummy; } ;


 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int zpa2326_dbg (struct iio_dev const*,char*) ;
 int zpa2326_enable_device (struct iio_dev const*) ;
 int zpa2326_reset_device (struct iio_dev const*) ;
 int zpa2326_sleep (struct iio_dev const*) ;

__attribute__((used)) static int zpa2326_power_on(const struct iio_dev *indio_dev,
       const struct zpa2326_private *private)
{
 int err;

 err = regulator_enable(private->vref);
 if (err)
  return err;

 err = regulator_enable(private->vdd);
 if (err)
  goto vref;

 zpa2326_dbg(indio_dev, "powered on");

 err = zpa2326_enable_device(indio_dev);
 if (err)
  goto vdd;

 err = zpa2326_reset_device(indio_dev);
 if (err)
  goto sleep;

 return 0;

sleep:
 zpa2326_sleep(indio_dev);
vdd:
 regulator_disable(private->vdd);
vref:
 regulator_disable(private->vref);

 zpa2326_dbg(indio_dev, "powered off");

 return err;
}
