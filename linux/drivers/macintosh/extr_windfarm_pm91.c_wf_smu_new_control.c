
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int name; } ;


 struct wf_control* cpufreq_clamp ;
 struct wf_control* fan_cpu_main ;
 struct wf_control* fan_cpu_second ;
 struct wf_control* fan_cpu_third ;
 struct wf_control* fan_hd ;
 struct wf_control* fan_slots ;
 int strcmp (int ,char*) ;
 scalar_t__ wf_get_control (struct wf_control*) ;
 int wf_smu_all_controls_ok ;

__attribute__((used)) static void wf_smu_new_control(struct wf_control *ct)
{
 if (wf_smu_all_controls_ok)
  return;

 if (fan_cpu_main == ((void*)0) && !strcmp(ct->name, "cpu-rear-fan-0")) {
  if (wf_get_control(ct) == 0)
   fan_cpu_main = ct;
 }

 if (fan_cpu_second == ((void*)0) && !strcmp(ct->name, "cpu-rear-fan-1")) {
  if (wf_get_control(ct) == 0)
   fan_cpu_second = ct;
 }

 if (fan_cpu_third == ((void*)0) && !strcmp(ct->name, "cpu-front-fan-0")) {
  if (wf_get_control(ct) == 0)
   fan_cpu_third = ct;
 }

 if (cpufreq_clamp == ((void*)0) && !strcmp(ct->name, "cpufreq-clamp")) {
  if (wf_get_control(ct) == 0)
   cpufreq_clamp = ct;
 }

 if (fan_hd == ((void*)0) && !strcmp(ct->name, "drive-bay-fan")) {
  if (wf_get_control(ct) == 0)
   fan_hd = ct;
 }

 if (fan_slots == ((void*)0) && !strcmp(ct->name, "slots-fan")) {
  if (wf_get_control(ct) == 0)
   fan_slots = ct;
 }

 if (fan_cpu_main && (fan_cpu_second || fan_cpu_third) && fan_hd &&
     fan_slots && cpufreq_clamp)
  wf_smu_all_controls_ok = 1;
}
