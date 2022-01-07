
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int zpa2326_enable_device (struct iio_dev const*) ;

__attribute__((used)) static int zpa2326_resume(const struct iio_dev *indio_dev)
{
 zpa2326_enable_device(indio_dev);

 return 0;
}
