
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__** cpu_fans ;
 scalar_t__ cpufreq_clamp ;
 int nr_chips ;
 int wf_control_set_max (scalar_t__) ;

__attribute__((used)) static void cpu_max_all_fans(void)
{
 int i;





 if (cpufreq_clamp)
  wf_control_set_max(cpufreq_clamp);
 for (i = 0; i < nr_chips; i++) {
  if (cpu_fans[i][0])
   wf_control_set_max(cpu_fans[i][0]);
  if (cpu_fans[i][1])
   wf_control_set_max(cpu_fans[i][1]);
  if (cpu_fans[i][2])
   wf_control_set_max(cpu_fans[i][2]);
 }
}
