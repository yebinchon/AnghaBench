
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct temp_data {int attr_group; } ;
struct platform_data {struct temp_data** core_data; TYPE_1__* hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;


 int kfree (struct temp_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void coretemp_remove_core(struct platform_data *pdata, int indx)
{
 struct temp_data *tdata = pdata->core_data[indx];


 sysfs_remove_group(&pdata->hwmon_dev->kobj, &tdata->attr_group);

 kfree(pdata->core_data[indx]);
 pdata->core_data[indx] = ((void*)0);
}
