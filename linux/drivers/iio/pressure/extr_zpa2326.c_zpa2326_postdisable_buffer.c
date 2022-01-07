
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int zpa2326_suspend (struct iio_dev*) ;

__attribute__((used)) static int zpa2326_postdisable_buffer(struct iio_dev *indio_dev)
{
 zpa2326_suspend(indio_dev);

 return 0;
}
