
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int dummy; } ;
struct dvb_frontend {TYPE_2__ ops; struct drxd_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct drxd_state {struct dtv_frontend_properties props; } ;
typedef int s32 ;


 int DRX_Start (struct drxd_state*,int ) ;
 int DRX_Stop (struct drxd_state*) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int drxd_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct drxd_state *state = fe->demodulator_priv;
 s32 off = 0;

 state->props = *p;
 DRX_Stop(state);

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 0);
 }

 msleep(200);

 return DRX_Start(state, off);
}
