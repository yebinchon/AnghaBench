
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_3__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_2__ tuner_ops; } ;
struct dtv_frontend_properties {int symbol_rate; int fec_inner; int inversion; } ;
struct dvb_frontend {TYPE_1__ ops; struct dtv_frontend_properties dtv_property_cache; struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;


 int cx24110_set_fec (struct cx24110_state*,int ) ;
 int cx24110_set_inversion (struct cx24110_state*,int ) ;
 int cx24110_set_symbolrate (struct cx24110_state*,int ) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int cx24110_set_frontend(struct dvb_frontend *fe)
{
 struct cx24110_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 cx24110_set_inversion(state, p->inversion);
 cx24110_set_fec(state, p->fec_inner);
 cx24110_set_symbolrate(state, p->symbol_rate);
 cx24110_writereg(state,0x04,0x05);

 return 0;
}
