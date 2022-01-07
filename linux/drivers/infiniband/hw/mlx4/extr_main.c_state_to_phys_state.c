
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ib_port_state { ____Placeholder_ib_port_state } ib_port_state ;


 int IB_PORT_ACTIVE ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;

__attribute__((used)) static u8 state_to_phys_state(enum ib_port_state state)
{
 return state == IB_PORT_ACTIVE ?
  IB_PORT_PHYS_STATE_LINK_UP : IB_PORT_PHYS_STATE_DISABLED;
}
