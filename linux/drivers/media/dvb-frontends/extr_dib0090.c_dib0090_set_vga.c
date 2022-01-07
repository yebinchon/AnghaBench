
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int dummy; } ;


 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;

int dib0090_set_vga(struct dvb_frontend *fe, u8 onoff)
{
 struct dib0090_state *state = fe->tuner_priv;

 dib0090_write_reg(state, 0x09, (dib0090_read_reg(state, 0x09) & 0x7fff)
   | ((onoff & 1) << 15));
 return 0;
}
