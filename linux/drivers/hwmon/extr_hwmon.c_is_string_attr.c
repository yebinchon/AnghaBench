
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int hwmon_curr ;
 scalar_t__ hwmon_curr_label ;
 int hwmon_energy ;
 scalar_t__ hwmon_energy_label ;
 int hwmon_fan ;
 scalar_t__ hwmon_fan_label ;
 int hwmon_humidity ;
 scalar_t__ hwmon_humidity_label ;
 int hwmon_in ;
 scalar_t__ hwmon_in_label ;
 int hwmon_power ;
 scalar_t__ hwmon_power_label ;
 int hwmon_temp ;
 scalar_t__ hwmon_temp_label ;

__attribute__((used)) static bool is_string_attr(enum hwmon_sensor_types type, u32 attr)
{
 return (type == hwmon_temp && attr == hwmon_temp_label) ||
        (type == hwmon_in && attr == hwmon_in_label) ||
        (type == hwmon_curr && attr == hwmon_curr_label) ||
        (type == hwmon_power && attr == hwmon_power_label) ||
        (type == hwmon_energy && attr == hwmon_energy_label) ||
        (type == hwmon_humidity && attr == hwmon_humidity_label) ||
        (type == hwmon_fan && attr == hwmon_fan_label);
}
