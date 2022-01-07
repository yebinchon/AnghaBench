
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int ENOTSUPP ;

int __qcom_scm_set_cold_boot_addr(void *entry, const cpumask_t *cpus)
{
 return -ENOTSUPP;
}
