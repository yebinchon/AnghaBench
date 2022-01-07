
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_data {unsigned int cpu; int update_lock; } ;
struct platform_device {int dummy; } ;
struct platform_data {int cpumask; struct temp_data** core_data; } ;


 int MAX_CORE_DATA ;
 size_t PKG_SYSFS_ATTR_NO ;
 int TO_ATTR_NO (unsigned int) ;
 struct platform_device* coretemp_get_pdev (unsigned int) ;
 int coretemp_remove_core (struct platform_data*,int) ;
 scalar_t__ cpuhp_tasks_frozen ;
 int cpumask_any_and (int *,int ) ;
 int cpumask_clear_cpu (unsigned int,int *) ;
 scalar_t__ cpumask_empty (int *) ;
 int cpumask_first (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_cpu_ids ;
 int platform_device_unregister (struct platform_device*) ;
 struct platform_data* platform_get_drvdata (struct platform_device*) ;
 size_t topology_logical_die_id (unsigned int) ;
 int topology_sibling_cpumask (unsigned int) ;
 int ** zone_devices ;

__attribute__((used)) static int coretemp_cpu_offline(unsigned int cpu)
{
 struct platform_device *pdev = coretemp_get_pdev(cpu);
 struct platform_data *pd;
 struct temp_data *tdata;
 int indx, target;





 if (cpuhp_tasks_frozen)
  return 0;


 if (!pdev)
  return 0;


 indx = TO_ATTR_NO(cpu);
 if (indx > MAX_CORE_DATA - 1)
  return 0;

 pd = platform_get_drvdata(pdev);
 tdata = pd->core_data[indx];

 cpumask_clear_cpu(cpu, &pd->cpumask);






 target = cpumask_any_and(&pd->cpumask, topology_sibling_cpumask(cpu));
 if (target >= nr_cpu_ids) {
  coretemp_remove_core(pd, indx);
 } else if (tdata && tdata->cpu == cpu) {
  mutex_lock(&tdata->update_lock);
  tdata->cpu = target;
  mutex_unlock(&tdata->update_lock);
 }






 if (cpumask_empty(&pd->cpumask)) {
  zone_devices[topology_logical_die_id(cpu)] = ((void*)0);
  platform_device_unregister(pdev);
  return 0;
 }





 tdata = pd->core_data[PKG_SYSFS_ATTR_NO];
 if (tdata && tdata->cpu == cpu) {
  target = cpumask_first(&pd->cpumask);
  mutex_lock(&tdata->update_lock);
  tdata->cpu = target;
  mutex_unlock(&tdata->update_lock);
 }
 return 0;
}
