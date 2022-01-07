
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u32 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int timf; int * fe; } ;





 int dib8000_set_bandwidth (int ,int) ;
 int dib8000_update_timf (struct dib8000_state*) ;

__attribute__((used)) static u32 dib8000_ctrl_timf(struct dvb_frontend *fe, uint8_t op, uint32_t timf)
{
 struct dib8000_state *state = fe->demodulator_priv;

 switch (op) {
 case 129:
   state->timf = timf;
   break;
 case 128:
   dib8000_update_timf(state);
   break;
 case 130:
   break;
 }
 dib8000_set_bandwidth(state->fe[0], 6000);

 return state->timf;
}
