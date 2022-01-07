
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_trigger {TYPE_2__* ops; } ;
struct iio_dev {scalar_t__ currentmode; int modes; int pollfunc_event; struct iio_trigger* trig; TYPE_1__* info; int mlock; scalar_t__ trig_readonly; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int (* validate_device ) (struct iio_trigger*,struct iio_dev*) ;} ;
struct TYPE_3__ {int (* validate_trigger ) (struct iio_dev*,struct iio_trigger*) ;} ;


 size_t EBUSY ;
 size_t EPERM ;
 scalar_t__ INDIO_BUFFER_TRIGGERED ;
 int INDIO_EVENT_TRIGGERED ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct iio_trigger* iio_trigger_acquire_by_name (char const*) ;
 int iio_trigger_attach_poll_func (struct iio_trigger*,int ) ;
 int iio_trigger_detach_poll_func (struct iio_trigger*,int ) ;
 int iio_trigger_put (struct iio_trigger*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct iio_dev*,struct iio_trigger*) ;
 int stub2 (struct iio_trigger*,struct iio_dev*) ;

__attribute__((used)) static ssize_t iio_trigger_write_current(struct device *dev,
      struct device_attribute *attr,
      const char *buf,
      size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct iio_trigger *oldtrig = indio_dev->trig;
 struct iio_trigger *trig;
 int ret;

 mutex_lock(&indio_dev->mlock);
 if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
  mutex_unlock(&indio_dev->mlock);
  return -EBUSY;
 }
 if (indio_dev->trig_readonly) {
  mutex_unlock(&indio_dev->mlock);
  return -EPERM;
 }
 mutex_unlock(&indio_dev->mlock);

 trig = iio_trigger_acquire_by_name(buf);
 if (oldtrig == trig) {
  ret = len;
  goto out_trigger_put;
 }

 if (trig && indio_dev->info->validate_trigger) {
  ret = indio_dev->info->validate_trigger(indio_dev, trig);
  if (ret)
   goto out_trigger_put;
 }

 if (trig && trig->ops && trig->ops->validate_device) {
  ret = trig->ops->validate_device(trig, indio_dev);
  if (ret)
   goto out_trigger_put;
 }

 indio_dev->trig = trig;

 if (oldtrig) {
  if (indio_dev->modes & INDIO_EVENT_TRIGGERED)
   iio_trigger_detach_poll_func(oldtrig,
           indio_dev->pollfunc_event);
  iio_trigger_put(oldtrig);
 }
 if (indio_dev->trig) {
  if (indio_dev->modes & INDIO_EVENT_TRIGGERED)
   iio_trigger_attach_poll_func(indio_dev->trig,
           indio_dev->pollfunc_event);
 }

 return len;

out_trigger_put:
 if (trig)
  iio_trigger_put(trig);
 return ret;
}
