
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_kfifo {int user_lock; int kf; } ;
struct iio_buffer {int dummy; } ;


 struct iio_kfifo* iio_to_kfifo (struct iio_buffer*) ;
 size_t kfifo_len (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static size_t iio_kfifo_buf_data_available(struct iio_buffer *r)
{
 struct iio_kfifo *kf = iio_to_kfifo(r);
 size_t samples;

 mutex_lock(&kf->user_lock);
 samples = kfifo_len(&kf->kf);
 mutex_unlock(&kf->user_lock);

 return samples;
}
