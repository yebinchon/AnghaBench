
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_kfifo {int update_needed; } ;
struct iio_buffer {int dummy; } ;


 struct iio_kfifo* iio_to_kfifo (struct iio_buffer*) ;

__attribute__((used)) static int iio_mark_update_needed_kfifo(struct iio_buffer *r)
{
 struct iio_kfifo *kf = iio_to_kfifo(r);
 kf->update_needed = 1;
 return 0;
}
