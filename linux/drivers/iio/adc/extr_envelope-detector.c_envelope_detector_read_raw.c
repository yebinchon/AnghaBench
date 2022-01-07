
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct envelope {int high; int dac_max; int invert; int level; int read_lock; int dac; int done; int low; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int envelope_detector_setup_compare (struct envelope*) ;
 struct envelope* iio_priv (struct iio_dev*) ;
 int iio_read_channel_scale (int ,int*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int envelope_detector_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int *val, int *val2, long mask)
{
 struct envelope *env = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&env->read_lock);
  env->high = env->dac_max + env->invert;
  env->low = -1 + env->invert;
  envelope_detector_setup_compare(env);
  wait_for_completion(&env->done);
  if (env->level < 0) {
   ret = env->level;
   goto err_unlock;
  }
  *val = env->invert ? env->dac_max - env->level : env->level;
  mutex_unlock(&env->read_lock);

  return IIO_VAL_INT;

 case 128:
  return iio_read_channel_scale(env->dac, val, val2);
 }

 return -EINVAL;

err_unlock:
 mutex_unlock(&env->read_lock);
 return ret;
}
