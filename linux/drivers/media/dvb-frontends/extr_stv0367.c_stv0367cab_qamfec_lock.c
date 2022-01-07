
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv0367_state {TYPE_1__* cab_state; } ;
struct TYPE_2__ {scalar_t__ qamfec_status_reg; } ;


 scalar_t__ F367CAB_QAMFEC_LOCK ;
 int stv0367_readbits (struct stv0367_state*,scalar_t__) ;

__attribute__((used)) static u32 stv0367cab_qamfec_lock(struct stv0367_state *state)
{
 return stv0367_readbits(state,
  (state->cab_state->qamfec_status_reg ?
   state->cab_state->qamfec_status_reg :
   F367CAB_QAMFEC_LOCK));
}
