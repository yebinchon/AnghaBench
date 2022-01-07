
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {TYPE_1__* governor; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* event_handler ) (struct devfreq*,int ,unsigned int*) ;} ;


 int DEVFREQ_GOV_INTERVAL ;
 int EINVAL ;
 int sscanf (char const*,char*,unsigned int*) ;
 int stub1 (struct devfreq*,int ,unsigned int*) ;
 struct devfreq* to_devfreq (struct device*) ;

__attribute__((used)) static ssize_t polling_interval_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct devfreq *df = to_devfreq(dev);
 unsigned int value;
 int ret;

 if (!df->governor)
  return -EINVAL;

 ret = sscanf(buf, "%u", &value);
 if (ret != 1)
  return -EINVAL;

 df->governor->event_handler(df, DEVFREQ_GOV_INTERVAL, &value);
 ret = count;

 return ret;
}
