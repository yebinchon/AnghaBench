
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;




 int hwmon_power_average_interval ;
 int * lochnagar_chan_names ;
 int strcmp (char*,int ) ;

__attribute__((used)) static umode_t lochnagar_is_visible(const void *drvdata,
        enum hwmon_sensor_types type,
        u32 attr, int chan)
{
 switch (type) {
 case 129:
  if (!strcmp("SYSVDD", lochnagar_chan_names[chan]))
   return 0;
  break;
 case 128:
  if (attr == hwmon_power_average_interval)
   return 0644;
  break;
 default:
  break;
 }

 return 0444;
}
