
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opa_port_states {int portphysstate_portstate; } ;


 int OPA_PI_MASK_PORT_PHYSICAL_STATE ;

__attribute__((used)) static inline u8 port_states_to_phys_state(struct opa_port_states *ps)
{
 return ((ps->portphysstate_portstate &
    OPA_PI_MASK_PORT_PHYSICAL_STATE) >> 4) & 0xf;
}
