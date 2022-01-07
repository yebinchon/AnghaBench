
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_data {int is_pkg_data; unsigned int cpu; int update_lock; int attr_size; int cpu_core_id; int status_reg; } ;


 int GFP_KERNEL ;
 int MAX_CORE_ATTRS ;
 int MSR_IA32_PACKAGE_THERM_STATUS ;
 int MSR_IA32_THERM_STATUS ;
 int TO_CORE_ID (unsigned int) ;
 struct temp_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct temp_data *init_temp_data(unsigned int cpu, int pkg_flag)
{
 struct temp_data *tdata;

 tdata = kzalloc(sizeof(struct temp_data), GFP_KERNEL);
 if (!tdata)
  return ((void*)0);

 tdata->status_reg = pkg_flag ? MSR_IA32_PACKAGE_THERM_STATUS :
       MSR_IA32_THERM_STATUS;
 tdata->is_pkg_data = pkg_flag;
 tdata->cpu = cpu;
 tdata->cpu_core_id = TO_CORE_ID(cpu);
 tdata->attr_size = MAX_CORE_ATTRS;
 mutex_init(&tdata->update_lock);
 return tdata;
}
