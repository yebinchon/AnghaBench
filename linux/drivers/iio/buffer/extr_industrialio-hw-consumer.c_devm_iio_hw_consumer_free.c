
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_hw_consumer {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_iio_hw_consumer_match ;
 int devm_iio_hw_consumer_release ;
 int devres_release (struct device*,int ,int ,struct iio_hw_consumer*) ;

void devm_iio_hw_consumer_free(struct device *dev, struct iio_hw_consumer *hwc)
{
 int rc;

 rc = devres_release(dev, devm_iio_hw_consumer_release,
       devm_iio_hw_consumer_match, hwc);
 WARN_ON(rc);
}
