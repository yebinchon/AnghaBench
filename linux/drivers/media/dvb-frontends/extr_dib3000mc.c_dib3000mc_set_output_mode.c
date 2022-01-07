
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dib3000mc_state {TYPE_1__* cfg; int demod; } ;
struct TYPE_2__ {scalar_t__ output_mpeg2_in_188_bytes; } ;
 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;
 int dprintk (char*,int *,...) ;

__attribute__((used)) static int dib3000mc_set_output_mode(struct dib3000mc_state *state, int mode)
{
 int ret = 0;
 u16 fifo_threshold = 1792;
 u16 outreg = 0;
 u16 outmode = 0;
 u16 elecout = 1;
 u16 smo_reg = dib3000mc_read_word(state, 206) & 0x0010;

 dprintk("-I-  Setting output mode for demod %p to %d\n",
   &state->demod, mode);

 switch (mode) {
  case 132:
   elecout = 0;
   break;
  case 129:
   outmode = 0;
   break;
  case 130:
   outmode = 1;
   break;
  case 128:
   outmode = 2;
   break;
  case 131:
   elecout = 3;
   smo_reg |= 3 << 1;
   fifo_threshold = 512;
   outmode = 5;
   break;
  case 133:
   outmode = 4;
   elecout = 1;
   break;
  default:
   dprintk("Unhandled output_mode passed to be set for demod %p\n",&state->demod);
   outmode = 0;
   break;
 }

 if ((state->cfg->output_mpeg2_in_188_bytes))
  smo_reg |= (1 << 5);

 outreg = dib3000mc_read_word(state, 244) & 0x07FF;
 outreg |= (outmode << 11);
 ret |= dib3000mc_write_word(state, 244, outreg);
 ret |= dib3000mc_write_word(state, 206, smo_reg);
 ret |= dib3000mc_write_word(state, 207, fifo_threshold);
 ret |= dib3000mc_write_word(state, 1040, elecout);
 return ret;
}
