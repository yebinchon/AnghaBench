
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 struct regmap* dev_get_drvdata (struct device*) ;
 int hwmon_chip ;
 scalar_t__ hwmon_chip_update_interval ;
 int hwmon_temp ;
 scalar_t__ hwmon_temp_offset ;
 int set_offset (struct regmap*,int,long) ;
 int set_update_interval (struct regmap*,long) ;

__attribute__((used)) static int w83773_write(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long val)
{
 struct regmap *regmap = dev_get_drvdata(dev);

 if (type == hwmon_chip && attr == hwmon_chip_update_interval)
  return set_update_interval(regmap, val);

 if (type == hwmon_temp && attr == hwmon_temp_offset)
  return set_offset(regmap, channel - 1, val);

 return -EOPNOTSUPP;
}
