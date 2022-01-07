
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int CPUHP_AP_ARM_SDEI_STARTING ;
 int NOTIFY_OK ;
 int cpuhp_remove_state (int ) ;
 int sdei_platform_reset () ;

__attribute__((used)) static int sdei_reboot_notifier(struct notifier_block *nb, unsigned long action,
    void *data)
{




 cpuhp_remove_state(CPUHP_AP_ARM_SDEI_STARTING);

 sdei_platform_reset();

 return NOTIFY_OK;
}
