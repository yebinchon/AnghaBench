
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmp421_data {int config; int* temp; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 int TMP421_CONFIG_RANGE ;


 long temp_from_s16 (int) ;
 long temp_from_u16 (int) ;
 struct tmp421_data* tmp421_update_device (struct device*) ;

__attribute__((used)) static int tmp421_read(struct device *dev, enum hwmon_sensor_types type,
         u32 attr, int channel, long *val)
{
 struct tmp421_data *tmp421 = tmp421_update_device(dev);

 switch (attr) {
 case 128:
  if (tmp421->config & TMP421_CONFIG_RANGE)
   *val = temp_from_u16(tmp421->temp[channel]);
  else
   *val = temp_from_s16(tmp421->temp[channel]);
  return 0;
 case 129:




  *val = tmp421->temp[channel] & 0x01;
  return 0;
 default:
  return -EOPNOTSUPP;
 }

}
