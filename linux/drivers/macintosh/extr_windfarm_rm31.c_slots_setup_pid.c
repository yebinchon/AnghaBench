
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_pid_param {int max; int min; } ;
typedef int s32 ;


 int max (int ,int ) ;
 int min (int ,int ) ;
 int pr_info (char*) ;
 int slots_fan ;
 struct wf_pid_param slots_param ;
 int slots_pid ;
 int slots_tick ;
 int wf_control_get_max (int ) ;
 int wf_control_get_min (int ) ;
 int wf_pid_init (int *,struct wf_pid_param*) ;

__attribute__((used)) static void slots_setup_pid(void)
{

 s32 fmin = wf_control_get_min(slots_fan);
 s32 fmax = wf_control_get_max(slots_fan);
 struct wf_pid_param param = slots_param;

 param.min = max(param.min, fmin);
 param.max = min(param.max, fmax);
 wf_pid_init(&slots_pid, &param);
 slots_tick = 1;

 pr_info("wf_rm31: Slots control loop started.\n");
}
