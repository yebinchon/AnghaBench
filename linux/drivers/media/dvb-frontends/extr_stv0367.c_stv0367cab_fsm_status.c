
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0367_state {int dummy; } ;


 int F367CAB_FSM_STATUS ;
 int stv0367_readbits (struct stv0367_state*,int ) ;

__attribute__((used)) static u32 stv0367cab_fsm_status(struct stv0367_state *state)
{
 return stv0367_readbits(state, F367CAB_FSM_STATUS);
}
