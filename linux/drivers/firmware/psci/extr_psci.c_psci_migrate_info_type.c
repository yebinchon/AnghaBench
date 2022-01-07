
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSCI_0_2_FN_MIGRATE_INFO_TYPE ;
 int invoke_psci_fn (int ,int ,int ,int ) ;

__attribute__((used)) static int psci_migrate_info_type(void)
{
 return invoke_psci_fn(PSCI_0_2_FN_MIGRATE_INFO_TYPE, 0, 0, 0);
}
