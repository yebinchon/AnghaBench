
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;



 int ltc4245_read_curr (struct device*,int ,int,long*) ;
 int ltc4245_read_in (struct device*,int ,int,long*) ;
 int ltc4245_read_power (struct device*,int ,int,long*) ;

__attribute__((used)) static int ltc4245_read(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long *val)
{

 switch (type) {
 case 130:
  return ltc4245_read_curr(dev, attr, channel, val);
 case 128:
  return ltc4245_read_power(dev, attr, channel, val);
 case 129:
  return ltc4245_read_in(dev, attr, channel - 1, val);
 default:
  return -EOPNOTSUPP;
 }
}
