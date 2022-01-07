
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;


 int pm121_all_sensors_ok ;
 scalar_t__ pm121_register_sensor (struct wf_sensor*,char*,int *) ;
 int sensor_cpu_current ;
 int sensor_cpu_power ;
 int sensor_cpu_temp ;
 int sensor_cpu_voltage ;
 int sensor_gpu_temp ;
 int sensor_hard_drive_temp ;
 int sensor_incoming_air_temp ;
 int sensor_north_bridge_temp ;
 int sensor_optical_drive_temp ;

__attribute__((used)) static void pm121_new_sensor(struct wf_sensor *sr)
{
 int all = 1;

 if (pm121_all_sensors_ok)
  return;

 all = pm121_register_sensor(sr, "cpu-temp",
        &sensor_cpu_temp) && all;
 all = pm121_register_sensor(sr, "cpu-current",
        &sensor_cpu_current) && all;
 all = pm121_register_sensor(sr, "cpu-voltage",
        &sensor_cpu_voltage) && all;
 all = pm121_register_sensor(sr, "cpu-power",
        &sensor_cpu_power) && all;
 all = pm121_register_sensor(sr, "hard-drive-temp",
        &sensor_hard_drive_temp) && all;
 all = pm121_register_sensor(sr, "optical-drive-temp",
        &sensor_optical_drive_temp) && all;
 all = pm121_register_sensor(sr, "incoming-air-temp",
        &sensor_incoming_air_temp) && all;
 all = pm121_register_sensor(sr, "north-bridge-temp",
        &sensor_north_bridge_temp) && all;
 all = pm121_register_sensor(sr, "gpu-temp",
        &sensor_gpu_temp) && all;

 if (all)
  pm121_all_sensors_ok = 1;
}
