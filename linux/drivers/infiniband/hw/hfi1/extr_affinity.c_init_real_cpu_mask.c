
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int real_cpu_mask; } ;


 int cpu_online_mask ;
 int cpumask_clear (int *) ;
 int cpumask_clear_cpu (int,int *) ;
 int cpumask_copy (int *,int ) ;
 int cpumask_first (int *) ;
 int cpumask_next (int,int *) ;
 int cpumask_weight (int *) ;
 TYPE_1__ node_affinity ;
 int * topology_sibling_cpumask (int) ;

void init_real_cpu_mask(void)
{
 int possible, curr_cpu, i, ht;

 cpumask_clear(&node_affinity.real_cpu_mask);


 cpumask_copy(&node_affinity.real_cpu_mask, cpu_online_mask);




 possible = cpumask_weight(&node_affinity.real_cpu_mask);
 ht = cpumask_weight(topology_sibling_cpumask(
    cpumask_first(&node_affinity.real_cpu_mask)));





 curr_cpu = cpumask_first(&node_affinity.real_cpu_mask);
 for (i = 0; i < possible / ht; i++)
  curr_cpu = cpumask_next(curr_cpu, &node_affinity.real_cpu_mask);




 for (; i < possible; i++) {
  cpumask_clear_cpu(curr_cpu, &node_affinity.real_cpu_mask);
  curr_cpu = cpumask_next(curr_cpu, &node_affinity.real_cpu_mask);
 }
}
