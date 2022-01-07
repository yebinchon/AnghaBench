
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {int lock; TYPE_1__* profile; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int max_state; int * freq_table; } ;


 size_t PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scnprintf (char*,size_t,char*,int ) ;
 scalar_t__ sprintf (char*,char*) ;
 struct devfreq* to_devfreq (struct device*) ;

__attribute__((used)) static ssize_t available_frequencies_show(struct device *d,
       struct device_attribute *attr,
       char *buf)
{
 struct devfreq *df = to_devfreq(d);
 ssize_t count = 0;
 int i;

 mutex_lock(&df->lock);

 for (i = 0; i < df->profile->max_state; i++)
  count += scnprintf(&buf[count], (PAGE_SIZE - count - 2),
    "%lu ", df->profile->freq_table[i]);

 mutex_unlock(&df->lock);

 if (count)
  count--;

 count += sprintf(&buf[count], "\n");

 return count;
}
