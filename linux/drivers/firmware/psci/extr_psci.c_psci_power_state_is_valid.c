
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;


 int PSCI_0_2_POWER_STATE_MASK ;
 int PSCI_1_0_EXT_POWER_STATE_MASK ;
 scalar_t__ psci_has_ext_power_state () ;

bool psci_power_state_is_valid(u32 state)
{
 const u32 valid_mask = psci_has_ext_power_state() ?
          PSCI_1_0_EXT_POWER_STATE_MASK :
          PSCI_0_2_POWER_STATE_MASK;

 return !(state & ~valid_mask);
}
