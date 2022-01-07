
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stv {int symbol_rate; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int symbol_rate; } ;
struct dvb_frontend {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; struct stv* demodulator_priv; } ;


 int start (struct stv*,struct dtv_frontend_properties*) ;
 int stop (struct stv*) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int set_parameters(struct dvb_frontend *fe)
{
 int stat = 0;
 struct stv *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;

 stop(state);
 if (fe->ops.tuner_ops.set_params)
  fe->ops.tuner_ops.set_params(fe);
 state->symbol_rate = p->symbol_rate;
 stat = start(state, p);
 return stat;
}
