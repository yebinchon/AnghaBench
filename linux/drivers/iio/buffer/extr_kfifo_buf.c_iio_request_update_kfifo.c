
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int bytes_per_datum; } ;
struct iio_kfifo {int update_needed; int user_lock; int kf; TYPE_1__ buffer; } ;
struct iio_buffer {int dummy; } ;


 int __iio_allocate_kfifo (struct iio_kfifo*,int ,int ) ;
 struct iio_kfifo* iio_to_kfifo (struct iio_buffer*) ;
 int kfifo_free (int *) ;
 int kfifo_reset_out (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iio_request_update_kfifo(struct iio_buffer *r)
{
 int ret = 0;
 struct iio_kfifo *buf = iio_to_kfifo(r);

 mutex_lock(&buf->user_lock);
 if (buf->update_needed) {
  kfifo_free(&buf->kf);
  ret = __iio_allocate_kfifo(buf, buf->buffer.bytes_per_datum,
       buf->buffer.length);
  if (ret >= 0)
   buf->update_needed = 0;
 } else {
  kfifo_reset_out(&buf->kf);
 }
 mutex_unlock(&buf->user_lock);

 return ret;
}
