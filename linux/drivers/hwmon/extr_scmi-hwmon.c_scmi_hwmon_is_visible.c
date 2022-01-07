
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct scmi_sensors {struct scmi_sensor_info*** info; } ;
struct scmi_sensor_info {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;



__attribute__((used)) static umode_t
scmi_hwmon_is_visible(const void *drvdata, enum hwmon_sensor_types type,
        u32 attr, int channel)
{
 const struct scmi_sensor_info *sensor;
 const struct scmi_sensors *scmi_sensors = drvdata;

 sensor = *(scmi_sensors->info[type] + channel);
 if (sensor)
  return 0444;

 return 0;
}
