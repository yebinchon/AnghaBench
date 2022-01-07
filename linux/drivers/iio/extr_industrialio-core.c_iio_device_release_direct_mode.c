
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;


 int mutex_unlock (int *) ;

void iio_device_release_direct_mode(struct iio_dev *indio_dev)
{
 mutex_unlock(&indio_dev->mlock);
}
