
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;



 char** lochnagar_chan_names ;

__attribute__((used)) static int lochnagar_read_string(struct device *dev,
     enum hwmon_sensor_types type, u32 attr,
     int chan, const char **str)
{
 switch (type) {
 case 129:
 case 130:
 case 128:
  *str = lochnagar_chan_names[chan];
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
