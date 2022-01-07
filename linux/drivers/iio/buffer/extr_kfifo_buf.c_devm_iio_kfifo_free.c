
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_iio_kfifo_match ;
 int devm_iio_kfifo_release ;
 int devres_release (struct device*,int ,int ,struct iio_buffer*) ;

void devm_iio_kfifo_free(struct device *dev, struct iio_buffer *r)
{
 WARN_ON(devres_release(dev, devm_iio_kfifo_release,
          devm_iio_kfifo_match, r));
}
