
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_settings {int * sensors_supported; } ;


 int ENODEV ;
 int ST_SENSORS_MAX_4WAI ;
 scalar_t__ strcmp (char const*,int ) ;

int st_sensors_get_settings_index(const char *name,
      const struct st_sensor_settings *list,
      const int list_length)
{
 int i, n;

 for (i = 0; i < list_length; i++) {
  for (n = 0; n < ST_SENSORS_MAX_4WAI; n++) {
   if (strcmp(name, list[i].sensors_supported[n]) == 0)
    return i;
  }
 }

 return -ENODEV;
}
