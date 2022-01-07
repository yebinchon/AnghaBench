
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;


 char** max6621_temp_labels ;

__attribute__((used)) static int
max6621_read_string(struct device *dev, enum hwmon_sensor_types type, u32 attr,
      int channel, const char **str)
{
 switch (type) {
 case 129:
  switch (attr) {
  case 128:
   *str = max6621_temp_labels[channel];
   return 0;
  default:
   return -EOPNOTSUPP;
  }
  break;
 default:
  return -EOPNOTSUPP;
 }

 return -EOPNOTSUPP;
}
