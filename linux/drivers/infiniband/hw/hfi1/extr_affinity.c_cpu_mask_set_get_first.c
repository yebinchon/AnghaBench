
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_mask_set {int used; int mask; } ;
typedef int cpumask_var_t ;


 int EINVAL ;
 int _cpu_mask_set_gen_inc (struct cpu_mask_set*) ;
 int cpumask_andnot (int ,int *,int *) ;
 int cpumask_first (int ) ;
 int cpumask_set_cpu (int,int *) ;
 int nr_cpu_ids ;

__attribute__((used)) static int cpu_mask_set_get_first(struct cpu_mask_set *set, cpumask_var_t diff)
{
 int cpu;

 if (!diff || !set)
  return -EINVAL;

 _cpu_mask_set_gen_inc(set);


 cpumask_andnot(diff, &set->mask, &set->used);

 cpu = cpumask_first(diff);
 if (cpu >= nr_cpu_ids)
  cpu = -EINVAL;
 else
  cpumask_set_cpu(cpu, &set->used);

 return cpu;
}
