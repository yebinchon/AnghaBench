
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int trig_readonly; int mlock; int trig; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 int iio_trigger_get (struct iio_trigger*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_trigger_set_immutable(struct iio_dev *indio_dev, struct iio_trigger *trig)
{
 if (!indio_dev || !trig)
  return -EINVAL;

 mutex_lock(&indio_dev->mlock);
 WARN_ON(indio_dev->trig_readonly);

 indio_dev->trig = iio_trigger_get(trig);
 indio_dev->trig_readonly = 1;
 mutex_unlock(&indio_dev->mlock);

 return 0;
}
