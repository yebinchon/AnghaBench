
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int iio_device_free (struct iio_dev*) ;

__attribute__((used)) static void devm_iio_device_release(struct device *dev, void *res)
{
 iio_device_free(*(struct iio_dev **)res);
}
