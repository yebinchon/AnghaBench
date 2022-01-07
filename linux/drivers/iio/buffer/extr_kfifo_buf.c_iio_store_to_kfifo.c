
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_kfifo {int kf; } ;
struct iio_buffer {int dummy; } ;


 int EBUSY ;
 struct iio_kfifo* iio_to_kfifo (struct iio_buffer*) ;
 int kfifo_in (int *,void const*,int) ;

__attribute__((used)) static int iio_store_to_kfifo(struct iio_buffer *r,
         const void *data)
{
 int ret;
 struct iio_kfifo *kf = iio_to_kfifo(r);
 ret = kfifo_in(&kf->kf, data, 1);
 if (ret != 1)
  return -EBUSY;
 return 0;
}
