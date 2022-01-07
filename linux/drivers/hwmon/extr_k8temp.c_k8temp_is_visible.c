
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct k8temp_data {int sensorsp; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int SEL_CORE ;
 int SEL_PLACE ;

__attribute__((used)) static umode_t
k8temp_is_visible(const void *drvdata, enum hwmon_sensor_types type,
    u32 attr, int channel)
{
 const struct k8temp_data *data = drvdata;

 if ((channel & 1) && !(data->sensorsp & SEL_PLACE))
  return 0;

 if ((channel & 2) && !(data->sensorsp & SEL_CORE))
  return 0;

 return 0444;
}
