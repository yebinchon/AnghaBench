
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PSCI_0_2_FN_PSCI_VERSION ;
 int invoke_psci_fn (int ,int ,int ,int ) ;

__attribute__((used)) static u32 psci_get_version(void)
{
 return invoke_psci_fn(PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0);
}
