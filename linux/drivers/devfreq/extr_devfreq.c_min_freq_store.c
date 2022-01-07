
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {unsigned long max_freq; unsigned long min_freq; int lock; TYPE_1__* profile; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned long* freq_table; int max_state; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,unsigned long*) ;
 struct devfreq* to_devfreq (struct device*) ;
 int update_devfreq (struct devfreq*) ;

__attribute__((used)) static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct devfreq *df = to_devfreq(dev);
 unsigned long value;
 int ret;

 ret = sscanf(buf, "%lu", &value);
 if (ret != 1)
  return -EINVAL;

 mutex_lock(&df->lock);

 if (value) {
  if (value > df->max_freq) {
   ret = -EINVAL;
   goto unlock;
  }
 } else {
  unsigned long *freq_table = df->profile->freq_table;


  if (freq_table[0] < freq_table[df->profile->max_state - 1])
   value = freq_table[0];
  else
   value = freq_table[df->profile->max_state - 1];
 }

 df->min_freq = value;
 update_devfreq(df);
 ret = count;
unlock:
 mutex_unlock(&df->lock);
 return ret;
}
