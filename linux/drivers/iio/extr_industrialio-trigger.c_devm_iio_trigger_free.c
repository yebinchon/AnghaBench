
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_iio_trigger_match ;
 int devm_iio_trigger_release ;
 int devres_release (struct device*,int ,int ,struct iio_trigger*) ;

void devm_iio_trigger_free(struct device *dev, struct iio_trigger *iio_trig)
{
 int rc;

 rc = devres_release(dev, devm_iio_trigger_release,
       devm_iio_trigger_match, iio_trig);
 WARN_ON(rc);
}
