
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_port_state { ____Placeholder_pvrdma_port_state } pvrdma_port_state ;
typedef enum ib_port_state { ____Placeholder_ib_port_state } ib_port_state ;



__attribute__((used)) static inline enum ib_port_state pvrdma_port_state_to_ib(
     enum pvrdma_port_state state)
{
 return (enum ib_port_state)state;
}
