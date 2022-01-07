
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;

void fxas21002c_core_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 pm_runtime_put_noidle(dev);
}
