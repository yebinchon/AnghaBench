
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_5__ {int history_len; } ;
struct TYPE_6__ {TYPE_1__ param; scalar_t__* powers; } ;
struct TYPE_7__ {TYPE_2__ pid; } ;


 size_t CPUFREQ ;
 unsigned int FAILURE_OVERTEMP ;
 int N_CONTROLS ;
 int N_LOOPS ;
 int average_power ;
 scalar_t__* controls ;
 int pm121_cpu_fans_tick (TYPE_3__*) ;
 TYPE_3__* pm121_cpu_state ;
 int pm121_create_cpu_fans () ;
 int pm121_create_sys_fans (int) ;
 unsigned int pm121_failure_state ;
 int pm121_overtemp ;
 int pm121_readjust ;
 int pm121_skipping ;
 int pm121_started ;
 int pm121_sys_fans_tick (int) ;
 scalar_t__* pm121_sys_state ;
 int pr_debug (char*) ;
 int wf_clear_overtemp () ;
 int wf_control_set_max (scalar_t__) ;
 int wf_control_set_min (scalar_t__) ;
 int wf_set_overtemp () ;

__attribute__((used)) static void pm121_tick(void)
{
 unsigned int last_failure = pm121_failure_state;
 unsigned int new_failure;
 s32 total_power;
 int i;

 if (!pm121_started) {
  pr_debug("pm121: creating control loops !\n");
  for (i = 0; i < N_LOOPS; i++)
   pm121_create_sys_fans(i);

  pm121_create_cpu_fans();
  pm121_started = 1;
 }


 if (pm121_skipping && --pm121_skipping)
  return;


 total_power = 0;
 for (i = 0; i < pm121_cpu_state->pid.param.history_len; i++)
  total_power += pm121_cpu_state->pid.powers[i];

 average_power = total_power / pm121_cpu_state->pid.param.history_len;


 pm121_failure_state = 0;
 for (i = 0 ; i < N_LOOPS; i++) {
  if (pm121_sys_state[i])
   pm121_sys_fans_tick(i);
 }

 if (pm121_cpu_state)
  pm121_cpu_fans_tick(pm121_cpu_state);

 pm121_readjust = 0;
 new_failure = pm121_failure_state & ~last_failure;




 if (pm121_failure_state && !last_failure) {
  for (i = 0; i < N_CONTROLS; i++) {
   if (controls[i])
    wf_control_set_max(controls[i]);
  }
 }




 if (!pm121_failure_state && last_failure) {
  if (controls[CPUFREQ])
   wf_control_set_min(controls[CPUFREQ]);
  pm121_readjust = 1;
 }




 if (new_failure & FAILURE_OVERTEMP) {
  wf_set_overtemp();
  pm121_skipping = 2;
  pm121_overtemp = 1;
 }







 if (!pm121_failure_state && pm121_overtemp) {
  wf_clear_overtemp();
  pm121_overtemp = 0;
 }
}
