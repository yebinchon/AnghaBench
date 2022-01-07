
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int cpumask_t ;


 int ENOTSUPP ;

int __qcom_scm_set_warm_boot_addr(struct device *dev, void *entry,
      const cpumask_t *cpus)
{
 return -ENOTSUPP;
}
