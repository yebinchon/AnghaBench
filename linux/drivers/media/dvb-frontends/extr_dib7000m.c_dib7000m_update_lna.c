
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* update_lna ) (int *,int ) ;} ;
struct dib7000m_state {int demod; TYPE_1__ cfg; } ;


 int dib7000m_read_word (struct dib7000m_state*,int) ;
 int dib7000m_restart_agc (struct dib7000m_state*) ;
 scalar_t__ stub1 (int *,int ) ;

__attribute__((used)) static int dib7000m_update_lna(struct dib7000m_state *state)
{
 u16 dyn_gain;

 if (state->cfg.update_lna) {

  dyn_gain = dib7000m_read_word(state, 390);

  if (state->cfg.update_lna(&state->demod,dyn_gain)) {
   dib7000m_restart_agc(state);
   return 1;
  }
 }
 return 0;
}
