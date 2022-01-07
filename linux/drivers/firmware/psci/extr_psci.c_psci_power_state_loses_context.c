
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;


 int PSCI_0_2_POWER_STATE_TYPE_MASK ;
 int PSCI_1_0_EXT_POWER_STATE_TYPE_MASK ;
 scalar_t__ psci_has_ext_power_state () ;

__attribute__((used)) static inline bool psci_power_state_loses_context(u32 state)
{
 const u32 mask = psci_has_ext_power_state() ?
     PSCI_1_0_EXT_POWER_STATE_TYPE_MASK :
     PSCI_0_2_POWER_STATE_TYPE_MASK;

 return state & mask;
}
