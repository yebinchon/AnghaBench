
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __qcom_scm_cpu_power_down (int ) ;

void qcom_scm_cpu_power_down(u32 flags)
{
 __qcom_scm_cpu_power_down(flags);
}
