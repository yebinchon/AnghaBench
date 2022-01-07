
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct stv0367ter_state {int guard; int sense; int state; scalar_t__ first_lock; int hierarchy; int bw; int mode; } ;
struct stv0367_state {scalar_t__ use_i2c_gatectrl; scalar_t__ reinit_on_setfrontend; struct stv0367ter_state* ter_state; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int transmission_mode; int guard_interval; int bandwidth_hz; int inversion; } ;
struct dvb_frontend {TYPE_2__ ops; struct stv0367_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef scalar_t__ s8 ;


 int FE_TER_CHAN_BW_6M ;
 int FE_TER_CHAN_BW_7M ;
 int FE_TER_CHAN_BW_8M ;
 int FE_TER_HIER_NONE ;
 int FE_TER_LOCKOK ;
 int FE_TER_MODE_2K ;
 int FE_TER_MODE_8K ;
 int FE_TER_NOLOCK ;





 int INVERSION_AUTO ;





 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*) ;
 int stub3 (struct dvb_frontend*,int) ;
 int stv0367ter_algo (struct dvb_frontend*) ;
 int stv0367ter_init (struct dvb_frontend*) ;

__attribute__((used)) static int stv0367ter_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct stv0367_state *state = fe->demodulator_priv;
 struct stv0367ter_state *ter_state = state->ter_state;


 s8 num_trials, index;
 u8 SenseTrials[] = { 131, 132 };

 if (state->reinit_on_setfrontend)
  stv0367ter_init(fe);

 if (fe->ops.tuner_ops.set_params) {
  if (state->use_i2c_gatectrl && fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 1);
  fe->ops.tuner_ops.set_params(fe);
  if (state->use_i2c_gatectrl && fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 0);
 }

 switch (p->transmission_mode) {
 default:
 case 128:
 case 130:
  ter_state->mode = FE_TER_MODE_2K;
  break;



 case 129:
  ter_state->mode = FE_TER_MODE_8K;
  break;
 }

 switch (p->guard_interval) {
 default:
 case 136:
 case 137:
 case 134:
 case 135:
  ter_state->guard = p->guard_interval;
  break;
 case 133:
  ter_state->guard = 136;
  break;
 }

 switch (p->bandwidth_hz) {
 case 6000000:
  ter_state->bw = FE_TER_CHAN_BW_6M;
  break;
 case 7000000:
  ter_state->bw = FE_TER_CHAN_BW_7M;
  break;
 case 8000000:
 default:
  ter_state->bw = FE_TER_CHAN_BW_8M;
 }

 ter_state->hierarchy = FE_TER_HIER_NONE;

 switch (p->inversion) {
 case 132:
 case 131:
  num_trials = 1;
  break;
 default:
  num_trials = 2;
  if (ter_state->first_lock)
   num_trials = 1;
  break;
 }

 ter_state->state = FE_TER_NOLOCK;
 index = 0;

 while (((index) < num_trials) && (ter_state->state != FE_TER_LOCKOK)) {
  if (!ter_state->first_lock) {
   if (p->inversion == INVERSION_AUTO)
    ter_state->sense = SenseTrials[index];

  }
  stv0367ter_algo(fe);

  if ((ter_state->state == FE_TER_LOCKOK) &&
    (p->inversion == INVERSION_AUTO) &&
        (index == 1)) {

   SenseTrials[index] = SenseTrials[0];
   SenseTrials[(index + 1) % 2] = (SenseTrials[1] + 1) % 2;
  }

  index++;
 }

 return 0;
}
