
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_pid_param {int max; int min; } ;
typedef int s32 ;


 int backside_fan ;
 struct wf_pid_param backside_param ;
 int backside_pid ;
 int backside_tick ;
 struct wf_pid_param dimms_param ;
 int dimms_pid ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int pr_info (char*) ;
 int wf_control_get_max (int ) ;
 int wf_control_get_min (int ) ;
 int wf_pid_init (int *,struct wf_pid_param*) ;

__attribute__((used)) static void backside_setup_pid(void)
{

 s32 fmin = wf_control_get_min(backside_fan);
 s32 fmax = wf_control_get_max(backside_fan);
 struct wf_pid_param param;

 param = backside_param;
 param.min = max(param.min, fmin);
 param.max = min(param.max, fmax);
 wf_pid_init(&backside_pid, &param);

 param = dimms_param;
 wf_pid_init(&dimms_pid, &param);

 backside_tick = 1;

 pr_info("wf_rm31: Backside control loop started.\n");
}
