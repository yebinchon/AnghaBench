
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpumask_t ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_set_warm_boot_addr (int ,void*,int const*) ;
 TYPE_1__* __scm ;

int qcom_scm_set_warm_boot_addr(void *entry, const cpumask_t *cpus)
{
 return __qcom_scm_set_warm_boot_addr(__scm->dev, entry, cpus);
}
