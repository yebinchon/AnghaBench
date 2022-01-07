
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct devfreq {unsigned long previous_freq; TYPE_2__ dev; TYPE_1__* profile; } ;
typedef int ssize_t ;
struct TYPE_3__ {int (* get_cur_freq ) (int ,unsigned long*) ;} ;


 int sprintf (char*,char*,unsigned long) ;
 int stub1 (int ,unsigned long*) ;
 struct devfreq* to_devfreq (struct device*) ;

__attribute__((used)) static ssize_t cur_freq_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 unsigned long freq;
 struct devfreq *devfreq = to_devfreq(dev);

 if (devfreq->profile->get_cur_freq &&
  !devfreq->profile->get_cur_freq(devfreq->dev.parent, &freq))
  return sprintf(buf, "%lu\n", freq);

 return sprintf(buf, "%lu\n", devfreq->previous_freq);
}
