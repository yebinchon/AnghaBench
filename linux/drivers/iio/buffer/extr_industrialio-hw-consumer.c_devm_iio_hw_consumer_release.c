
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_hw_consumer {int dummy; } ;
struct device {int dummy; } ;


 int iio_hw_consumer_free (struct iio_hw_consumer*) ;

__attribute__((used)) static void devm_iio_hw_consumer_release(struct device *dev, void *res)
{
 iio_hw_consumer_free(*(struct iio_hw_consumer **)res);
}
