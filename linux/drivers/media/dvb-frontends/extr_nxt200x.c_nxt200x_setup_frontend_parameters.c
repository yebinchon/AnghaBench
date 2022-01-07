
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct nxt200x_state {int demod_chip; TYPE_1__* config; } ;
struct TYPE_5__ {int (* calc_regs ) (struct dvb_frontend*,int*,int) ;} ;
struct TYPE_6__ {TYPE_2__ tuner_ops; } ;
struct dtv_frontend_properties {int modulation; } ;
struct dvb_frontend {TYPE_3__ ops; struct nxt200x_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_4__ {int (* set_ts_params ) (struct dvb_frontend*,int) ;} ;


 int EINVAL ;





 int nxt2004_microcontroller_init (struct nxt200x_state*) ;
 int nxt200x_agc_reset (struct nxt200x_state*) ;
 int nxt200x_microcontroller_start (struct nxt200x_state*) ;
 int nxt200x_microcontroller_stop (struct nxt200x_state*) ;
 int nxt200x_readreg_multibyte (struct nxt200x_state*,int,int*,int) ;
 int nxt200x_writebytes (struct nxt200x_state*,int,int*,int) ;
 int nxt200x_writereg_multibyte (struct nxt200x_state*,int,int*,int) ;
 int nxt200x_writetuner (struct nxt200x_state*,int*) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*,int*,int) ;

__attribute__((used)) static int nxt200x_setup_frontend_parameters(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct nxt200x_state* state = fe->demodulator_priv;
 u8 buf[5];


 nxt200x_microcontroller_stop(state);

 if (state->demod_chip == 131) {

  buf[0] = 0x04;
  nxt200x_writebytes(state, 0x14, buf, 1);
  buf[0] = 0x00;
  nxt200x_writebytes(state, 0x17, buf, 1);
 }


 switch (p->modulation) {
  case 129:
  case 130:


   if (state->config->set_ts_params)
    state->config->set_ts_params(fe, 1);
   break;
  case 128:

   if (state->config->set_ts_params)
    state->config->set_ts_params(fe, 0);
   break;
  default:
   return -EINVAL;
   break;
 }

 if (fe->ops.tuner_ops.calc_regs) {

  fe->ops.tuner_ops.calc_regs(fe, buf, 5);


  nxt200x_writetuner(state, buf);
 }


 nxt200x_agc_reset(state);


 switch (p->modulation) {
  case 129:
  case 130:
   buf[0] = 0x74;
   break;
  case 128:
   buf[0] = 0x70;
   break;
  default:
   return -EINVAL;
   break;
 }
 nxt200x_writebytes(state, 0x42, buf, 1);


 switch (state->demod_chip) {
  case 132:
   buf[0] = 0x87;
   break;
  case 131:
   buf[0] = 0x07;
   break;
  default:
   return -EINVAL;
   break;
 }
 nxt200x_writebytes(state, 0x57, buf, 1);


 buf[0] = 0x10;
 buf[1] = 0x00;
 switch (state->demod_chip) {
  case 132:
   nxt200x_writereg_multibyte(state, 0x58, buf, 2);
   break;
  case 131:
   nxt200x_writebytes(state, 0x58, buf, 2);
   break;
  default:
   return -EINVAL;
   break;
 }


 switch (p->modulation) {
  case 129:
    buf[0] = 0x68;
    break;
  case 130:
    buf[0] = 0x64;
    break;
  case 128:
    buf[0] = 0x60;
    break;
  default:
    return -EINVAL;
    break;
 }
 buf[1] = 0x00;
 switch (state->demod_chip) {
  case 132:
   nxt200x_writereg_multibyte(state, 0x5C, buf, 2);
   break;
  case 131:
   nxt200x_writebytes(state, 0x5C, buf, 2);
   break;
  default:
   return -EINVAL;
   break;
 }


 buf[0] = 0x05;
 nxt200x_writebytes(state, 0x43, buf, 1);

 if (state->demod_chip == 131) {

  buf[0] = 0x00;
  buf[1] = 0x00;
  nxt200x_writebytes(state, 0x46, buf, 2);
 }


 buf[0] = 0x80;
 buf[1] = 0x00;
 switch (state->demod_chip) {
  case 132:
   nxt200x_writereg_multibyte(state, 0x4B, buf, 2);
   break;
  case 131:
   nxt200x_writebytes(state, 0x4B, buf, 2);
   break;
  default:
   return -EINVAL;
   break;
 }


 buf[0] = 0x00;
 nxt200x_writebytes(state, 0x4D, buf, 1);


 buf[0] = 0x44;
 nxt200x_writebytes(state, 0x55, buf, 1);


 buf[0] = 0x04;
 nxt200x_writebytes(state, 0x41, buf, 1);

 if (state->demod_chip == 131) {
  nxt200x_readreg_multibyte(state, 0x80, buf, 1);
  buf[0] = 0x24;
  nxt200x_writereg_multibyte(state, 0x80, buf, 1);


  nxt200x_readreg_multibyte(state, 0x08, buf, 1);
  buf[0] = 0x10;
  nxt200x_writereg_multibyte(state, 0x08, buf, 1);
  nxt200x_readreg_multibyte(state, 0x08, buf, 1);
  buf[0] = 0x00;
  nxt200x_writereg_multibyte(state, 0x08, buf, 1);

  nxt200x_readreg_multibyte(state, 0x80, buf, 1);
  buf[0] = 0x04;
  nxt200x_writereg_multibyte(state, 0x80, buf, 1);
  buf[0] = 0x00;
  nxt200x_writereg_multibyte(state, 0x81, buf, 1);
  buf[0] = 0x80; buf[1] = 0x00; buf[2] = 0x00;
  nxt200x_writereg_multibyte(state, 0x82, buf, 3);
  nxt200x_readreg_multibyte(state, 0x88, buf, 1);
  buf[0] = 0x11;
  nxt200x_writereg_multibyte(state, 0x88, buf, 1);
  nxt200x_readreg_multibyte(state, 0x80, buf, 1);
  buf[0] = 0x44;
  nxt200x_writereg_multibyte(state, 0x80, buf, 1);
 }


 switch (p->modulation) {
  case 129:
    buf[0] = 0x02;
    break;
  case 130:
    buf[0] = 0x03;
    break;
  case 128:
    buf[0] = 0x00;
    break;
  default:
    return -EINVAL;
    break;
 }
 nxt200x_writebytes(state, 0x30, buf, 1);


 buf[0] = 0x00;
 nxt200x_writebytes(state, 0x41, buf, 1);


 buf[0] = 0x80;
 buf[1] = 0x00;
 switch (state->demod_chip) {
  case 132:
   nxt200x_writereg_multibyte(state, 0x49, buf, 2);
   nxt200x_writereg_multibyte(state, 0x4B, buf, 2);
   break;
  case 131:
   nxt200x_writebytes(state, 0x49, buf, 2);
   nxt200x_writebytes(state, 0x4B, buf, 2);
   break;
  default:
   return -EINVAL;
   break;
 }


 buf[0] = 0x04;
 nxt200x_writebytes(state, 0x41, buf, 1);

 nxt200x_microcontroller_start(state);

 if (state->demod_chip == 131) {
  nxt2004_microcontroller_init(state);


  buf[0] = 0xF0;
  buf[1] = 0x00;
  nxt200x_writebytes(state, 0x5C, buf, 2);
 }




 return 0;
}
