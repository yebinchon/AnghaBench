
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CPUHP_AP_ARM_SDEI_STARTING ;
 int cpuhp_setup_state (int ,char*,int *,int *) ;
 int pr_warn (char*) ;
 int sdei_cpuhp_down ;
 int sdei_cpuhp_up ;
 int sdei_mark_interface_broken () ;
 int sdei_reregister_shared () ;

__attribute__((used)) static int sdei_device_thaw(struct device *dev)
{
 int err;


 err = sdei_reregister_shared();
 if (err) {
  pr_warn("Failed to re-register shared events...\n");
  sdei_mark_interface_broken();
  return err;
 }

 err = cpuhp_setup_state(CPUHP_AP_ARM_SDEI_STARTING, "SDEI",
    &sdei_cpuhp_up, &sdei_cpuhp_down);
 if (err)
  pr_warn("Failed to re-register CPU hotplug notifier...\n");

 return err;
}
