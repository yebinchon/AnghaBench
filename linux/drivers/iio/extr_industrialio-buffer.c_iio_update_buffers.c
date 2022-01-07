
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int info_exist_lock; int mlock; int * info; } ;
struct iio_buffer {int dummy; } ;


 int ENODEV ;
 int __iio_update_buffers (struct iio_dev*,struct iio_buffer*,struct iio_buffer*) ;
 scalar_t__ iio_buffer_is_active (struct iio_buffer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_update_buffers(struct iio_dev *indio_dev,
         struct iio_buffer *insert_buffer,
         struct iio_buffer *remove_buffer)
{
 int ret;

 if (insert_buffer == remove_buffer)
  return 0;

 mutex_lock(&indio_dev->info_exist_lock);
 mutex_lock(&indio_dev->mlock);

 if (insert_buffer && iio_buffer_is_active(insert_buffer))
  insert_buffer = ((void*)0);

 if (remove_buffer && !iio_buffer_is_active(remove_buffer))
  remove_buffer = ((void*)0);

 if (!insert_buffer && !remove_buffer) {
  ret = 0;
  goto out_unlock;
 }

 if (indio_dev->info == ((void*)0)) {
  ret = -ENODEV;
  goto out_unlock;
 }

 ret = __iio_update_buffers(indio_dev, insert_buffer, remove_buffer);

out_unlock:
 mutex_unlock(&indio_dev->mlock);
 mutex_unlock(&indio_dev->info_exist_lock);

 return ret;
}
