
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_var_t ;


 int free_cpumask_var (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void free_cpu_groups(int num, cpumask_var_t **pcpu_groups)
{
 int i;
 cpumask_var_t *cpu_groups = *pcpu_groups;

 for (i = 0; i < num; ++i)
  free_cpumask_var(cpu_groups[i]);
 kfree(cpu_groups);
}
