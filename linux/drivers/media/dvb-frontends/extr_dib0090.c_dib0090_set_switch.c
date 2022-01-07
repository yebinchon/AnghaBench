
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int dummy; } ;


 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;

int dib0090_set_switch(struct dvb_frontend *fe, u8 sw1, u8 sw2, u8 sw3)
{
 struct dib0090_state *state = fe->tuner_priv;

 dib0090_write_reg(state, 0x0b, (dib0090_read_reg(state, 0x0b) & 0xfff8)
   | ((sw3 & 1) << 2) | ((sw2 & 1) << 1) | (sw1 & 1));

 return 0;
}
