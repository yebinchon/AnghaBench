
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int cpumask_var_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;
 int alloc_cpumask_var (int *,int ) ;
 int alloc_init_cpu_groups (int **) ;
 int cpu_online_mask ;
 int cpumap_print_to_pagebuf (int,char*,int ) ;
 scalar_t__ down_and_up_cpus (int ,int ) ;
 int free_cpu_groups (int,int **) ;
 int free_cpumask_var (int ) ;
 int free_page (unsigned long) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int hotplug_tests(void)
{
 int i, nb_cpu_group, err = -ENOMEM;
 cpumask_var_t offlined_cpus, *cpu_groups;
 char *page_buf;

 if (!alloc_cpumask_var(&offlined_cpus, GFP_KERNEL))
  return err;

 nb_cpu_group = alloc_init_cpu_groups(&cpu_groups);
 if (nb_cpu_group < 0)
  goto out_free_cpus;
 page_buf = (char *)__get_free_page(GFP_KERNEL);
 if (!page_buf)
  goto out_free_cpu_groups;

 err = 0;




 pr_info("Trying to turn off and on again all CPUs\n");
 err += down_and_up_cpus(cpu_online_mask, offlined_cpus);





 for (i = 0; i < nb_cpu_group; ++i) {
  ssize_t len = cpumap_print_to_pagebuf(1, page_buf,
            cpu_groups[i]);

  page_buf[len - 1] = '\0';
  pr_info("Trying to turn off and on again group %d (CPUs %s)\n",
   i, page_buf);
  err += down_and_up_cpus(cpu_groups[i], offlined_cpus);
 }

 free_page((unsigned long)page_buf);
out_free_cpu_groups:
 free_cpu_groups(nb_cpu_group, &cpu_groups);
out_free_cpus:
 free_cpumask_var(offlined_cpus);
 return err;
}
