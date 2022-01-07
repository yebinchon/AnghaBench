
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_kfifo {int kf; int user_lock; } ;
struct iio_buffer {int dummy; } ;


 struct iio_kfifo* iio_to_kfifo (struct iio_buffer*) ;
 int kfifo_free (int *) ;
 int kfree (struct iio_kfifo*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void iio_kfifo_buffer_release(struct iio_buffer *buffer)
{
 struct iio_kfifo *kf = iio_to_kfifo(buffer);

 mutex_destroy(&kf->user_lock);
 kfifo_free(&kf->kf);
 kfree(kf);
}
