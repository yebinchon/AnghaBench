
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int cpu_mask; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int cpumap_print_to_pagebuf (int,char*,int *) ;
 scalar_t__ cpumask_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int process_to_sde_mutex ;
 int snprintf (char*,int ,char*,char*) ;
 int strnlen (char*,int ) ;

ssize_t sdma_get_cpu_to_sde_map(struct sdma_engine *sde, char *buf)
{
 mutex_lock(&process_to_sde_mutex);
 if (cpumask_empty(&sde->cpu_mask))
  snprintf(buf, PAGE_SIZE, "%s\n", "empty");
 else
  cpumap_print_to_pagebuf(1, buf, &sde->cpu_mask);
 mutex_unlock(&process_to_sde_mutex);
 return strnlen(buf, PAGE_SIZE);
}
