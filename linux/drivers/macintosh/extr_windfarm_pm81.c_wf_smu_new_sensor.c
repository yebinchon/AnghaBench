
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int name; } ;


 struct wf_sensor* sensor_cpu_power ;
 struct wf_sensor* sensor_cpu_temp ;
 struct wf_sensor* sensor_hd_temp ;
 int strcmp (int ,char*) ;
 scalar_t__ wf_get_sensor (struct wf_sensor*) ;
 int wf_smu_all_sensors_ok ;

__attribute__((used)) static void wf_smu_new_sensor(struct wf_sensor *sr)
{
 if (wf_smu_all_sensors_ok)
  return;

 if (sensor_cpu_power == ((void*)0) && !strcmp(sr->name, "cpu-power")) {
  if (wf_get_sensor(sr) == 0)
   sensor_cpu_power = sr;
 }

 if (sensor_cpu_temp == ((void*)0) && !strcmp(sr->name, "cpu-temp")) {
  if (wf_get_sensor(sr) == 0)
   sensor_cpu_temp = sr;
 }

 if (sensor_hd_temp == ((void*)0) && !strcmp(sr->name, "hd-temp")) {
  if (wf_get_sensor(sr) == 0)
   sensor_hd_temp = sr;
 }

 if (sensor_cpu_power && sensor_cpu_temp && sensor_hd_temp)
  wf_smu_all_sensors_ok = 1;
}
