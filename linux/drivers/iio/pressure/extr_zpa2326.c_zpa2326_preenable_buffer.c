
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {scalar_t__ waken; } ;
struct iio_dev {int dummy; } ;


 scalar_t__ iio_priv (struct iio_dev*) ;
 int zpa2326_resume (struct iio_dev*) ;

__attribute__((used)) static int zpa2326_preenable_buffer(struct iio_dev *indio_dev)
{
 int ret = zpa2326_resume(indio_dev);

 if (ret < 0)
  return ret;


 ((struct zpa2326_private *)
  iio_priv(indio_dev))->waken = iio_priv(indio_dev);

 return 0;
}
