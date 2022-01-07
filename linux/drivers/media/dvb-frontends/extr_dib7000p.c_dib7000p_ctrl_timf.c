
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int timf; int current_bandwidth; } ;





 int dib7000p_set_bandwidth (struct dib7000p_state*,int ) ;
 int dib7000p_update_timf (struct dib7000p_state*) ;

__attribute__((used)) static u32 dib7000p_ctrl_timf(struct dvb_frontend *fe, u8 op, u32 timf)
{
 struct dib7000p_state *state = fe->demodulator_priv;
 switch (op) {
 case 129:
  state->timf = timf;
  break;
 case 128:
  dib7000p_update_timf(state);
  break;
 case 130:
  break;
 }
 dib7000p_set_bandwidth(state, state->current_bandwidth);
 return state->timf;
}
