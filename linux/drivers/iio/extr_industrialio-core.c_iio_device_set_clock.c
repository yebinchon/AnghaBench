
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_event_interface {int dummy; } ;
struct iio_dev {int mlock; int clock_id; struct iio_event_interface* event_interface; } ;
typedef int clockid_t ;


 int EBUSY ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 scalar_t__ iio_event_enabled (struct iio_event_interface const*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iio_device_set_clock(struct iio_dev *indio_dev, clockid_t clock_id)
{
 int ret;
 const struct iio_event_interface *ev_int = indio_dev->event_interface;

 ret = mutex_lock_interruptible(&indio_dev->mlock);
 if (ret)
  return ret;
 if ((ev_int && iio_event_enabled(ev_int)) ||
     iio_buffer_enabled(indio_dev)) {
  mutex_unlock(&indio_dev->mlock);
  return -EBUSY;
 }
 indio_dev->clock_id = clock_id;
 mutex_unlock(&indio_dev->mlock);

 return 0;
}
