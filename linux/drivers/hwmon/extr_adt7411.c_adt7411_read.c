
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 int adt7411_read_in (struct device*,int ,int,long*) ;
 int adt7411_read_temp (struct device*,int ,int,long*) ;



__attribute__((used)) static int adt7411_read(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long *val)
{
 switch (type) {
 case 129:
  return adt7411_read_in(dev, attr, channel, val);
 case 128:
  return adt7411_read_temp(dev, attr, channel, val);
 default:
  return -EOPNOTSUPP;
 }
}
