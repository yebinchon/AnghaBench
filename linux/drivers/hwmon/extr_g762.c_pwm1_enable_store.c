
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int do_set_pwm_enable (struct device*,unsigned long) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t pwm1_enable_store(struct device *dev,
     struct device_attribute *da, const char *buf,
     size_t count)
{
 unsigned long val;
 int ret;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 ret = do_set_pwm_enable(dev, val);
 if (ret < 0)
  return ret;

 return count;
}
