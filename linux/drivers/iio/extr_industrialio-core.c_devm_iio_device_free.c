
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_iio_device_match ;
 int devm_iio_device_release ;
 int devres_release (struct device*,int ,int ,struct iio_dev*) ;

void devm_iio_device_free(struct device *dev, struct iio_dev *iio_dev)
{
 int rc;

 rc = devres_release(dev, devm_iio_device_release,
       devm_iio_device_match, iio_dev);
 WARN_ON(rc);
}
