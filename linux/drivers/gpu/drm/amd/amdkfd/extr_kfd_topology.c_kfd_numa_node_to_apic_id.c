
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int cpumask_of_node (int) ;
 int kfd_cpumask_to_apic_id (int ) ;
 int pr_warn (char*) ;

int kfd_numa_node_to_apic_id(int numa_node_id)
{
 if (numa_node_id == -1) {
  pr_warn("Invalid NUMA Node. Use online CPU mask\n");
  return kfd_cpumask_to_apic_id(cpu_online_mask);
 }
 return kfd_cpumask_to_apic_id(cpumask_of_node(numa_node_id));
}
