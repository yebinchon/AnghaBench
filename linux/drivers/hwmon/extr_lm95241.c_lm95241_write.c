
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;


 int lm95241_write_chip (struct device*,int ,int,long) ;
 int lm95241_write_temp (struct device*,int ,int,long) ;

__attribute__((used)) static int lm95241_write(struct device *dev, enum hwmon_sensor_types type,
    u32 attr, int channel, long val)
{
 switch (type) {
 case 129:
  return lm95241_write_chip(dev, attr, channel, val);
 case 128:
  return lm95241_write_temp(dev, attr, channel, val);
 default:
  return -EOPNOTSUPP;
 }
}
