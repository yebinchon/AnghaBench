
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CPUHP_AP_ARM_SDEI_STARTING ;
 int cpuhp_remove_state (int ) ;
 int sdei_unregister_shared () ;

__attribute__((used)) static int sdei_device_freeze(struct device *dev)
{
 int err;


 cpuhp_remove_state(CPUHP_AP_ARM_SDEI_STARTING);

 err = sdei_unregister_shared();
 if (err)
  return err;

 return 0;
}
