
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int dummy; } ;


 int dib0090_write_reg (struct dib0090_state*,int,int) ;

void dib0090_set_dc_servo(struct dvb_frontend *fe, u8 DC_servo_cutoff)
{
 struct dib0090_state *state = fe->tuner_priv;
 if (DC_servo_cutoff < 4)
  dib0090_write_reg(state, 0x04, DC_servo_cutoff);
}
