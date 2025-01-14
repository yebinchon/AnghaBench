
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sp887x_state {int dummy; } ;
struct TYPE_3__ {int (* get_frequency ) (struct dvb_frontend*,unsigned int*) ;int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int bandwidth_hz; unsigned int frequency; scalar_t__ transmission_mode; } ;
struct dvb_frontend {TYPE_2__ ops; struct sp887x_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int EINVAL ;
 scalar_t__ TRANSMISSION_MODE_2K ;
 int configure_reg0xc05 (struct dtv_frontend_properties*,int*) ;
 int sp887x_correct_offsets (struct sp887x_state*,struct dtv_frontend_properties*,unsigned int) ;
 int sp887x_microcontroller_start (struct sp887x_state*) ;
 int sp887x_microcontroller_stop (struct sp887x_state*) ;
 int sp887x_readreg (struct sp887x_state*,int) ;
 int sp887x_writereg (struct sp887x_state*,int,int) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int stub3 (struct dvb_frontend*,unsigned int*) ;
 int stub4 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int sp887x_setup_frontend_parameters(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct sp887x_state* state = fe->demodulator_priv;
 unsigned actual_freq;
 int err;
 u16 val, reg0xc05;

 if (p->bandwidth_hz != 8000000 &&
     p->bandwidth_hz != 7000000 &&
     p->bandwidth_hz != 6000000)
  return -EINVAL;

 if ((err = configure_reg0xc05(p, &reg0xc05)))
  return err;

 sp887x_microcontroller_stop(state);


 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }
 if (fe->ops.tuner_ops.get_frequency) {
  fe->ops.tuner_ops.get_frequency(fe, &actual_freq);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 } else {
  actual_freq = p->frequency;
 }


 sp887x_readreg(state, 0x200);

 sp887x_correct_offsets(state, p, actual_freq);


 if (p->bandwidth_hz == 6000000)
  val = 2;
 else if (p->bandwidth_hz == 7000000)
  val = 1;
 else
  val = 0;

 sp887x_writereg(state, 0x311, val);


 if (p->transmission_mode == TRANSMISSION_MODE_2K)
  sp887x_writereg(state, 0x338, 0x000);
 else
  sp887x_writereg(state, 0x338, 0x001);

 sp887x_writereg(state, 0xc05, reg0xc05);

 if (p->bandwidth_hz == 6000000)
  val = 2 << 3;
 else if (p->bandwidth_hz == 7000000)
  val = 3 << 3;
 else
  val = 0 << 3;




 sp887x_writereg(state, 0xf14, 0x160 | val);
 sp887x_writereg(state, 0xf15, 0x000);

 sp887x_microcontroller_start(state);
 return 0;
}
