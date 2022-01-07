
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_event_interface {int det_events; int flags; } ;
struct iio_dev {int mlock; struct iio_event_interface* event_interface; } ;


 int EBUSY ;
 int ENODEV ;
 int IIO_BUSY_BIT_POS ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int anon_inode_getfd (char*,int *,struct iio_dev*,int) ;
 int clear_bit (int ,int *) ;
 int iio_device_get (struct iio_dev*) ;
 int iio_device_put (struct iio_dev*) ;
 int iio_event_chrdev_fileops ;
 int kfifo_reset_out (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int iio_event_getfd(struct iio_dev *indio_dev)
{
 struct iio_event_interface *ev_int = indio_dev->event_interface;
 int fd;

 if (ev_int == ((void*)0))
  return -ENODEV;

 fd = mutex_lock_interruptible(&indio_dev->mlock);
 if (fd)
  return fd;

 if (test_and_set_bit(IIO_BUSY_BIT_POS, &ev_int->flags)) {
  fd = -EBUSY;
  goto unlock;
 }

 iio_device_get(indio_dev);

 fd = anon_inode_getfd("iio:event", &iio_event_chrdev_fileops,
    indio_dev, O_RDONLY | O_CLOEXEC);
 if (fd < 0) {
  clear_bit(IIO_BUSY_BIT_POS, &ev_int->flags);
  iio_device_put(indio_dev);
 } else {
  kfifo_reset_out(&ev_int->det_events);
 }

unlock:
 mutex_unlock(&indio_dev->mlock);
 return fd;
}
