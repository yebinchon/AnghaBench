
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxsd9_state {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct kxsd9_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kxsd9_power_down (struct kxsd9_state*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;

int kxsd9_common_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct kxsd9_state *st = iio_priv(indio_dev);

 iio_triggered_buffer_cleanup(indio_dev);
 iio_device_unregister(indio_dev);
 pm_runtime_get_sync(dev);
 pm_runtime_put_noidle(dev);
 pm_runtime_disable(dev);
 kxsd9_power_down(st);

 return 0;
}
