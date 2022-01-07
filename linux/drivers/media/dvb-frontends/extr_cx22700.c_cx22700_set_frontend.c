
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int inversion; } ;
struct dvb_frontend {TYPE_2__ ops; struct cx22700_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct cx22700_state {int dummy; } ;


 int cx22700_set_inversion (struct cx22700_state*,int ) ;
 int cx22700_set_tps (struct cx22700_state*,struct dtv_frontend_properties*) ;
 int cx22700_writereg (struct cx22700_state*,int,int) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int cx22700_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct cx22700_state* state = fe->demodulator_priv;

 cx22700_writereg (state, 0x00, 0x02);
 cx22700_writereg (state, 0x00, 0x00);

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 cx22700_set_inversion(state, c->inversion);
 cx22700_set_tps(state, c);
 cx22700_writereg (state, 0x37, 0x01);
 cx22700_writereg (state, 0x00, 0x01);

 return 0;
}
