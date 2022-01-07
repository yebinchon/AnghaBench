
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct envelope {unsigned long comp_interval; int read_lock; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct envelope* iio_priv (struct iio_dev*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t envelope_store_comp_interval(struct iio_dev *indio_dev,
         uintptr_t private,
         struct iio_chan_spec const *ch,
         const char *buf, size_t len)
{
 struct envelope *env = iio_priv(indio_dev);
 unsigned long interval;
 int ret;

 ret = kstrtoul(buf, 0, &interval);
 if (ret < 0)
  return ret;
 if (interval > 1000)
  return -EINVAL;

 mutex_lock(&env->read_lock);
 env->comp_interval = interval;
 mutex_unlock(&env->read_lock);

 return len;
}
