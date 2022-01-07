
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nxt6000_state {int dummy; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int inversion; int transmission_mode; int guard_interval; int bandwidth_hz; } ;
struct dvb_frontend {TYPE_2__ ops; struct nxt6000_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int msleep (int) ;
 int nxt6000_set_bandwidth (struct nxt6000_state*,int ) ;
 int nxt6000_set_guard_interval (struct nxt6000_state*,int ) ;
 int nxt6000_set_inversion (struct nxt6000_state*,int ) ;
 int nxt6000_set_transmission_mode (struct nxt6000_state*,int ) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int nxt6000_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct nxt6000_state* state = fe->demodulator_priv;
 int result;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 result = nxt6000_set_bandwidth(state, p->bandwidth_hz);
 if (result < 0)
  return result;

 result = nxt6000_set_guard_interval(state, p->guard_interval);
 if (result < 0)
  return result;

 result = nxt6000_set_transmission_mode(state, p->transmission_mode);
 if (result < 0)
  return result;

 result = nxt6000_set_inversion(state, p->inversion);
 if (result < 0)
  return result;

 msleep(500);
 return 0;
}
