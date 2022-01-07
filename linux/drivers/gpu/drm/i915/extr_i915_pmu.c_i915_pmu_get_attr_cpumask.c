
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int *) ;
 int i915_pmu_cpumask ;

__attribute__((used)) static ssize_t
i915_pmu_get_attr_cpumask(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 return cpumap_print_to_pagebuf(1, buf, &i915_pmu_cpumask);
}
