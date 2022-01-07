
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct env {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ FAN_DATA_VALID (int) ;
 int FAN_PERIOD_TO_RPM (int) ;
 scalar_t__ IREG_FAN0 ;
 struct env* dev_get_drvdata (struct device*) ;
 scalar_t__ env_read (struct env*,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_speed(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 int fan_nr = to_sensor_dev_attr(attr)->index;
 struct env *p = dev_get_drvdata(dev);
 int rpm, period;
 u8 val;

 val = env_read(p, IREG_FAN0 + fan_nr);
 period = (int) val << 8;
 if (FAN_DATA_VALID(period))
  rpm = FAN_PERIOD_TO_RPM(period);
 else
  rpm = 0;

 return sprintf(buf, "%d\n", rpm);
}
