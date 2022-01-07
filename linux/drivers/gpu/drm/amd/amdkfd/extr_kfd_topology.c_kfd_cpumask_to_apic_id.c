
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int apicid; } ;


 TYPE_1__ cpu_data (int) ;
 struct cpumask const* cpu_none_mask ;
 int cpumask_first (struct cpumask const*) ;
 int nr_cpu_ids ;

__attribute__((used)) static int kfd_cpumask_to_apic_id(const struct cpumask *cpumask)
{
 int first_cpu_of_numa_node;

 if (!cpumask || cpumask == cpu_none_mask)
  return -1;
 first_cpu_of_numa_node = cpumask_first(cpumask);
 if (first_cpu_of_numa_node >= nr_cpu_ids)
  return -1;



 return first_cpu_of_numa_node;

}
