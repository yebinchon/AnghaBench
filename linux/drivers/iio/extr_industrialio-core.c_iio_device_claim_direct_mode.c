
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;


 int EBUSY ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_device_claim_direct_mode(struct iio_dev *indio_dev)
{
 mutex_lock(&indio_dev->mlock);

 if (iio_buffer_enabled(indio_dev)) {
  mutex_unlock(&indio_dev->mlock);
  return -EBUSY;
 }
 return 0;
}
