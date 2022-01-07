
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_pid_param {int max; int min; } ;
typedef int s32 ;


 int drives_fan ;
 struct wf_pid_param drives_param ;
 int drives_pid ;
 int drives_tick ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int pr_info (char*) ;
 int wf_control_get_max (int ) ;
 int wf_control_get_min (int ) ;
 int wf_pid_init (int *,struct wf_pid_param*) ;

__attribute__((used)) static void drives_setup_pid(void)
{

 s32 fmin = wf_control_get_min(drives_fan);
 s32 fmax = wf_control_get_max(drives_fan);
 struct wf_pid_param param = drives_param;

 param.min = max(param.min, fmin);
 param.max = min(param.max, fmax);
 wf_pid_init(&drives_pid, &param);
 drives_tick = 1;

 pr_info("wf_pm72: Drive bay control loop started.\n");
}
