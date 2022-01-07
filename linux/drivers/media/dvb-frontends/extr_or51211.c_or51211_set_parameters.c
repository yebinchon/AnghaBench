
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct or51211_state {scalar_t__ current_frequency; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {scalar_t__ frequency; } ;
struct dvb_frontend {TYPE_2__ ops; struct or51211_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int or51211_setmode (struct dvb_frontend*,int ) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int or51211_set_parameters(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct or51211_state* state = fe->demodulator_priv;


 if (state->current_frequency != p->frequency) {
  if (fe->ops.tuner_ops.set_params) {
   fe->ops.tuner_ops.set_params(fe);
   if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
  }


  or51211_setmode(fe,0);


  state->current_frequency = p->frequency;
 }
 return 0;
}
