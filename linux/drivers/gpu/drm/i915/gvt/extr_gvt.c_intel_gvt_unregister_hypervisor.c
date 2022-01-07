
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int THIS_MODULE ;
 TYPE_1__ intel_gvt_host ;
 int intel_gvt_hypervisor_host_exit (int ) ;
 int module_put (int ) ;

void
intel_gvt_unregister_hypervisor(void)
{
 intel_gvt_hypervisor_host_exit(intel_gvt_host.dev);
 module_put(THIS_MODULE);
}
