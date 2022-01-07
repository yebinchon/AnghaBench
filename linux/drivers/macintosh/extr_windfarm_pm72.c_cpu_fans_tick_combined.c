
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_cpu_pid_state {int target; } ;
struct wf_control {int name; } ;
typedef int s32 ;
struct TYPE_2__ {int rmaxn_exhaust_fan; } ;


 int CPU_INTAKE_SCALE ;
 int DBG_LOTS (char*,...) ;
 int FAILURE_FAN ;
 int FAILURE_SENSOR ;
 scalar_t__ cpu_check_overtemp (int) ;
 struct wf_control** cpu_front_fans ;
 int cpu_max_all_fans () ;
 TYPE_1__** cpu_mpu_data ;
 struct wf_cpu_pid_state* cpu_pid ;
 struct wf_control** cpu_pumps ;
 struct wf_control** cpu_rear_fans ;
 int failure_state ;
 int max (int,int) ;
 int nr_chips ;
 int pr_warning (char*,int ,int) ;
 int read_one_cpu_vals (int,int*,int*) ;
 int wf_control_get (struct wf_control*,int*) ;
 int wf_control_get_max (struct wf_control*) ;
 int wf_control_set (struct wf_control*,int) ;
 int wf_cpu_pid_run (struct wf_cpu_pid_state*,int,int) ;

__attribute__((used)) static void cpu_fans_tick_combined(void)
{
 s32 temp0, power0, temp1, power1, t_max = 0;
 s32 temp, power, intake, pump;
 struct wf_control *pump0, *pump1;
 struct wf_cpu_pid_state *sp = &cpu_pid[0];
 int err, cpu;

 DBG_LOTS("* cpu fans_tick_combined()\n");


 wf_control_get(cpu_rear_fans[0], &sp->target);

 DBG_LOTS("  CPUs: cur_target = %d RPM\n", sp->target);


 err = read_one_cpu_vals(0, &temp0, &power0);
 if (err) {
  failure_state |= FAILURE_SENSOR;
  cpu_max_all_fans();
  return;
 }
 err = read_one_cpu_vals(1, &temp1, &power1);
 if (err) {
  failure_state |= FAILURE_SENSOR;
  cpu_max_all_fans();
  return;
 }


 t_max = max(t_max, max(temp0, temp1));


 if (cpu_check_overtemp(t_max))
  return;


 temp = max(temp0, temp1);
 power = max(power0, power1);


 wf_cpu_pid_run(sp, power, temp);


 intake = (sp->target * CPU_INTAKE_SCALE) >> 16;


 pump0 = cpu_pumps[0];
 pump1 = cpu_pumps[1];
 if (!pump0) {
  pump0 = pump1;
  pump1 = ((void*)0);
 }
 pump = (sp->target * wf_control_get_max(pump0)) /
  cpu_mpu_data[0]->rmaxn_exhaust_fan;

 DBG_LOTS("  CPUs: target = %d RPM\n", sp->target);
 DBG_LOTS("  CPUs: intake = %d RPM\n", intake);
 DBG_LOTS("  CPUs: pump   = %d RPM\n", pump);

 for (cpu = 0; cpu < nr_chips; cpu++) {
  err = wf_control_set(cpu_rear_fans[cpu], sp->target);
  if (err) {
   pr_warning("wf_pm72: Fan %s reports error %d\n",
       cpu_rear_fans[cpu]->name, err);
   failure_state |= FAILURE_FAN;
  }
  err = wf_control_set(cpu_front_fans[cpu], intake);
  if (err) {
   pr_warning("wf_pm72: Fan %s reports error %d\n",
       cpu_front_fans[cpu]->name, err);
   failure_state |= FAILURE_FAN;
  }
  err = 0;
  if (cpu_pumps[cpu])
   err = wf_control_set(cpu_pumps[cpu], pump);
  if (err) {
   pr_warning("wf_pm72: Pump %s reports error %d\n",
       cpu_pumps[cpu]->name, err);
   failure_state |= FAILURE_FAN;
  }
 }
}
