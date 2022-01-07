
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int info_exist_lock; int * info; int dev; int chrdev; } ;


 int cdev_device_del (int *,int *) ;
 int iio_buffer_free_sysfs_and_mask (struct iio_dev*) ;
 int iio_buffer_wakeup_poll (struct iio_dev*) ;
 int iio_device_unregister_debugfs (struct iio_dev*) ;
 int iio_device_wakeup_eventset (struct iio_dev*) ;
 int iio_disable_all_buffers (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iio_device_unregister(struct iio_dev *indio_dev)
{
 cdev_device_del(&indio_dev->chrdev, &indio_dev->dev);

 mutex_lock(&indio_dev->info_exist_lock);

 iio_device_unregister_debugfs(indio_dev);

 iio_disable_all_buffers(indio_dev);

 indio_dev->info = ((void*)0);

 iio_device_wakeup_eventset(indio_dev);
 iio_buffer_wakeup_poll(indio_dev);

 mutex_unlock(&indio_dev->info_exist_lock);

 iio_buffer_free_sysfs_and_mask(indio_dev);
}
