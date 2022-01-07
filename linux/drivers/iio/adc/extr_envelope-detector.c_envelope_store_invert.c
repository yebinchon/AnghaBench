
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct envelope {unsigned long invert; int read_lock; int comp_irq; int comp_irq_trigger; int comp_irq_trigger_inv; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct envelope* iio_priv (struct iio_dev*) ;
 int irq_set_irq_type (int ,int ) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t envelope_store_invert(struct iio_dev *indio_dev,
         uintptr_t private,
         struct iio_chan_spec const *ch,
         const char *buf, size_t len)
{
 struct envelope *env = iio_priv(indio_dev);
 unsigned long invert;
 int ret;
 u32 trigger;

 ret = kstrtoul(buf, 0, &invert);
 if (ret < 0)
  return ret;
 if (invert > 1)
  return -EINVAL;

 trigger = invert ? env->comp_irq_trigger_inv : env->comp_irq_trigger;

 mutex_lock(&env->read_lock);
 if (invert != env->invert)
  ret = irq_set_irq_type(env->comp_irq, trigger);
 if (!ret) {
  env->invert = invert;
  ret = len;
 }
 mutex_unlock(&env->read_lock);

 return ret;
}
