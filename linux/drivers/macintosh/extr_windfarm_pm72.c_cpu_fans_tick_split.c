
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wf_cpu_pid_state {int target; } ;
typedef int s32 ;
struct TYPE_5__ {int name; } ;


 int CPU_INTAKE_SCALE ;
 int DBG_LOTS (char*,...) ;
 int FAILURE_FAN ;
 int FAILURE_SENSOR ;
 scalar_t__ cpu_check_overtemp (int) ;
 TYPE_1__** cpu_front_fans ;
 int cpu_max_all_fans () ;
 struct wf_cpu_pid_state* cpu_pid ;
 TYPE_1__** cpu_rear_fans ;
 int failure_state ;
 int max (int,int) ;
 int nr_chips ;
 int pr_warning (char*,int ,int) ;
 int read_one_cpu_vals (int,int*,int*) ;
 int wf_control_get (TYPE_1__*,int*) ;
 int wf_control_set (TYPE_1__*,int) ;
 int wf_cpu_pid_run (struct wf_cpu_pid_state*,int,int) ;

__attribute__((used)) static void cpu_fans_tick_split(void)
{
 int err, cpu;
 s32 intake, temp, power, t_max = 0;

 DBG_LOTS("* cpu fans_tick_split()\n");

 for (cpu = 0; cpu < nr_chips; ++cpu) {
  struct wf_cpu_pid_state *sp = &cpu_pid[cpu];


  wf_control_get(cpu_rear_fans[cpu], &sp->target);

  DBG_LOTS("  CPU%d: cur_target = %d RPM\n", cpu, sp->target);

  err = read_one_cpu_vals(cpu, &temp, &power);
  if (err) {
   failure_state |= FAILURE_SENSOR;
   cpu_max_all_fans();
   return;
  }


  t_max = max(t_max, temp);


  if (cpu_check_overtemp(t_max))
   return;


  wf_cpu_pid_run(sp, power, temp);

  DBG_LOTS("  CPU%d: target = %d RPM\n", cpu, sp->target);


  err = wf_control_set(cpu_rear_fans[cpu], sp->target);
  if (err) {
   pr_warning("wf_pm72: Fan %s reports error %d\n",
          cpu_rear_fans[cpu]->name, err);
   failure_state |= FAILURE_FAN;
   break;
  }


  intake = (sp->target * CPU_INTAKE_SCALE) >> 16;
  DBG_LOTS("  CPU%d: intake = %d RPM\n", cpu, intake);
  err = wf_control_set(cpu_front_fans[cpu], intake);
  if (err) {
   pr_warning("wf_pm72: Fan %s reports error %d\n",
          cpu_front_fans[cpu]->name, err);
   failure_state |= FAILURE_FAN;
   break;
  }
 }
}
