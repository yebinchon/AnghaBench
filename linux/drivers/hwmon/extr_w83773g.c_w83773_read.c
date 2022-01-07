
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 struct regmap* dev_get_drvdata (struct device*) ;
 int get_fault (struct regmap*,int,long*) ;
 int get_local_temp (struct regmap*,long*) ;
 int get_offset (struct regmap*,int,long*) ;
 int get_remote_temp (struct regmap*,int,long*) ;
 int get_update_interval (struct regmap*,long*) ;
 int hwmon_chip ;
 int hwmon_chip_update_interval ;




__attribute__((used)) static int w83773_read(struct device *dev, enum hwmon_sensor_types type,
         u32 attr, int channel, long *val)
{
 struct regmap *regmap = dev_get_drvdata(dev);

 if (type == hwmon_chip) {
  if (attr == hwmon_chip_update_interval)
   return get_update_interval(regmap, val);
  return -EOPNOTSUPP;
 }

 switch (attr) {
 case 129:
  if (channel == 0)
   return get_local_temp(regmap, val);
  return get_remote_temp(regmap, channel - 1, val);
 case 130:
  return get_fault(regmap, channel - 1, val);
 case 128:
  return get_offset(regmap, channel - 1, val);
 default:
  return -EOPNOTSUPP;
 }
}
