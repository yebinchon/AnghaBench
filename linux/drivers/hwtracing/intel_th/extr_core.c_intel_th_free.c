
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_th {int num_thdevs; int id; int major; int dev; int ** thdev; int * hub; } ;


 int TH_POSSIBLE_OUTPUTS ;
 int __unregister_chrdev (int ,int ,int ,char*) ;
 int ida_simple_remove (int *,int ) ;
 int intel_th_device_remove (int *) ;
 int intel_th_ida ;
 int intel_th_request_hub_module_flush (struct intel_th*) ;
 int kfree (struct intel_th*) ;
 int pm_runtime_forbid (int ) ;
 int pm_runtime_get_sync (int ) ;

void intel_th_free(struct intel_th *th)
{
 int i;

 intel_th_request_hub_module_flush(th);

 intel_th_device_remove(th->hub);
 for (i = 0; i < th->num_thdevs; i++) {
  if (th->thdev[i] != th->hub)
   intel_th_device_remove(th->thdev[i]);
  th->thdev[i] = ((void*)0);
 }

 th->num_thdevs = 0;

 pm_runtime_get_sync(th->dev);
 pm_runtime_forbid(th->dev);

 __unregister_chrdev(th->major, 0, TH_POSSIBLE_OUTPUTS,
       "intel_th/output");

 ida_simple_remove(&intel_th_ida, th->id);

 kfree(th);
}
