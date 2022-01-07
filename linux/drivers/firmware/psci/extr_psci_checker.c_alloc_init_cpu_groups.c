
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef int cpumask_var_t ;
typedef int cpu_groups ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_cpumask_var (int *,int ) ;
 struct cpumask const* cpu_online_mask ;
 int cpumask_andnot (int ,int ,struct cpumask const*) ;
 int cpumask_any (int ) ;
 int cpumask_copy (int ,struct cpumask const*) ;
 int cpumask_empty (int ) ;
 int free_cpu_groups (int,int **) ;
 int free_cpumask_var (int ) ;
 int * kcalloc (int ,int,int ) ;
 int nb_available_cpus ;
 struct cpumask* topology_core_cpumask (int ) ;

__attribute__((used)) static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
{
 int num_groups = 0;
 cpumask_var_t tmp, *cpu_groups;

 if (!alloc_cpumask_var(&tmp, GFP_KERNEL))
  return -ENOMEM;

 cpu_groups = kcalloc(nb_available_cpus, sizeof(cpu_groups),
        GFP_KERNEL);
 if (!cpu_groups)
  return -ENOMEM;

 cpumask_copy(tmp, cpu_online_mask);

 while (!cpumask_empty(tmp)) {
  const struct cpumask *cpu_group =
   topology_core_cpumask(cpumask_any(tmp));

  if (!alloc_cpumask_var(&cpu_groups[num_groups], GFP_KERNEL)) {
   free_cpu_groups(num_groups, &cpu_groups);
   return -ENOMEM;
  }
  cpumask_copy(cpu_groups[num_groups++], cpu_group);
  cpumask_andnot(tmp, tmp, cpu_group);
 }

 free_cpumask_var(tmp);
 *pcpu_groups = cpu_groups;

 return num_groups;
}
