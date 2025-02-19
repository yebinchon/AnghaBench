
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct env {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int FAN_RPM_TO_PERIOD (unsigned long) ;
 scalar_t__ IREG_FAN0 ;
 struct env* dev_get_drvdata (struct device*) ;
 int env_write (struct env*,scalar_t__,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_speed(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 int fan_nr = to_sensor_dev_attr(attr)->index;
 unsigned long rpm;
 struct env *p = dev_get_drvdata(dev);
 int period;
 u8 val;
 int err;

 err = kstrtoul(buf, 10, &rpm);
 if (err)
  return err;

 if (!rpm)
  return -EINVAL;

 period = FAN_RPM_TO_PERIOD(rpm);
 val = period >> 8;
 env_write(p, IREG_FAN0 + fan_nr, val);

 return count;
}
