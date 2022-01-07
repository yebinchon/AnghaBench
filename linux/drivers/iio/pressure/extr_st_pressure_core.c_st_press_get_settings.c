
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_settings {int dummy; } ;


 int ARRAY_SIZE (struct st_sensor_settings const*) ;
 struct st_sensor_settings const* st_press_sensors_settings ;
 int st_sensors_get_settings_index (char const*,struct st_sensor_settings const*,int ) ;

const struct st_sensor_settings *st_press_get_settings(const char *name)
{
 int index = st_sensors_get_settings_index(name,
     st_press_sensors_settings,
     ARRAY_SIZE(st_press_sensors_settings));
 if (index < 0)
  return ((void*)0);

 return &st_press_sensors_settings[index];
}
