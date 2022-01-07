
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 struct iio_dev* dev_get_drvdata (struct device const*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_priv (struct iio_dev*) ;
 int zpa2326_fini_runtime (int ) ;
 int zpa2326_power_off (struct iio_dev*,int ) ;
 int zpa2326_sleep (struct iio_dev*) ;

void zpa2326_remove(const struct device *parent)
{
 struct iio_dev *indio_dev = dev_get_drvdata(parent);

 iio_device_unregister(indio_dev);
 zpa2326_fini_runtime(indio_dev->dev.parent);
 zpa2326_sleep(indio_dev);
 zpa2326_power_off(indio_dev, iio_priv(indio_dev));
}
