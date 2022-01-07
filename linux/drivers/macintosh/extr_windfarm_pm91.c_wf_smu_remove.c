
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 scalar_t__ cpufreq_clamp ;
 scalar_t__ fan_cpu_main ;
 scalar_t__ fan_cpu_second ;
 scalar_t__ fan_cpu_third ;
 scalar_t__ fan_hd ;
 scalar_t__ fan_slots ;
 int kfree (int ) ;
 int msleep (int) ;
 scalar_t__ sensor_cpu_power ;
 scalar_t__ sensor_cpu_temp ;
 scalar_t__ sensor_hd_temp ;
 scalar_t__ sensor_slots_power ;
 int wf_put_control (scalar_t__) ;
 int wf_put_sensor (scalar_t__) ;
 int wf_smu_cpu_fans ;
 int wf_smu_drive_fans ;
 int wf_smu_events ;
 int wf_smu_slots_fans ;
 int wf_unregister_client (int *) ;

__attribute__((used)) static int wf_smu_remove(struct platform_device *ddev)
{
 wf_unregister_client(&wf_smu_events);





 msleep(1000);
 if (sensor_cpu_power)
  wf_put_sensor(sensor_cpu_power);
 if (sensor_cpu_temp)
  wf_put_sensor(sensor_cpu_temp);
 if (sensor_hd_temp)
  wf_put_sensor(sensor_hd_temp);
 if (sensor_slots_power)
  wf_put_sensor(sensor_slots_power);


 if (fan_cpu_main)
  wf_put_control(fan_cpu_main);
 if (fan_cpu_second)
  wf_put_control(fan_cpu_second);
 if (fan_cpu_third)
  wf_put_control(fan_cpu_third);
 if (fan_hd)
  wf_put_control(fan_hd);
 if (fan_slots)
  wf_put_control(fan_slots);
 if (cpufreq_clamp)
  wf_put_control(cpufreq_clamp);


 kfree(wf_smu_slots_fans);
 kfree(wf_smu_drive_fans);
 kfree(wf_smu_cpu_fans);

 return 0;
}
