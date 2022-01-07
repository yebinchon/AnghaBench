
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSCI_0_2_FN_SYSTEM_OFF ;
 int invoke_psci_fn (int ,int ,int ,int ) ;

__attribute__((used)) static void psci_sys_poweroff(void)
{
 invoke_psci_fn(PSCI_0_2_FN_SYSTEM_OFF, 0, 0, 0);
}
