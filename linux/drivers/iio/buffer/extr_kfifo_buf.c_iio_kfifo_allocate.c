
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int length; int * access; } ;
struct iio_kfifo {int update_needed; struct iio_buffer buffer; int user_lock; } ;


 int GFP_KERNEL ;
 int iio_buffer_init (struct iio_buffer*) ;
 int kfifo_access_funcs ;
 struct iio_kfifo* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct iio_buffer *iio_kfifo_allocate(void)
{
 struct iio_kfifo *kf;

 kf = kzalloc(sizeof(*kf), GFP_KERNEL);
 if (!kf)
  return ((void*)0);

 kf->update_needed = 1;
 iio_buffer_init(&kf->buffer);
 kf->buffer.access = &kfifo_access_funcs;
 kf->buffer.length = 2;
 mutex_init(&kf->user_lock);

 return &kf->buffer;
}
