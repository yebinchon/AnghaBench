
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_mask_set {int used; } ;


 int _cpu_mask_set_gen_dec (struct cpu_mask_set*) ;
 int cpumask_clear_cpu (int,int *) ;

__attribute__((used)) static void cpu_mask_set_put(struct cpu_mask_set *set, int cpu)
{
 if (!set)
  return;

 cpumask_clear_cpu(cpu, &set->used);
 _cpu_mask_set_gen_dec(set);
}
