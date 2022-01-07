
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ output_mpeg2_in_188_bytes; int hostbus_diversity; } ;
struct dib7000p_state {scalar_t__ version; TYPE_1__ cfg; int demod; } ;
 scalar_t__ SOC7090 ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dprintk (char*,int *,...) ;

__attribute__((used)) static int dib7000p_set_output_mode(struct dib7000p_state *state, int mode)
{
 int ret = 0;
 u16 outreg, fifo_threshold, smo_mode;

 outreg = 0;
 fifo_threshold = 1792;
 smo_mode = (dib7000p_read_word(state, 235) & 0x0050) | (1 << 1);

 dprintk("setting output mode for demod %p to %d\n", &state->demod, mode);

 switch (mode) {
 case 129:
  outreg = (1 << 10);
  break;
 case 130:
  outreg = (1 << 10) | (1 << 6);
  break;
 case 128:
  outreg = (1 << 10) | (2 << 6) | (0 << 1);
  break;
 case 133:
  if (state->cfg.hostbus_diversity)
   outreg = (1 << 10) | (4 << 6);
  else
   outreg = (1 << 11);
  break;
 case 131:
  smo_mode |= (3 << 1);
  fifo_threshold = 512;
  outreg = (1 << 10) | (5 << 6);
  break;
 case 134:
  outreg = (1 << 10) | (3 << 6);
  break;
 case 132:
  outreg = 0;
  break;
 default:
  dprintk("Unhandled output_mode passed to be set for demod %p\n", &state->demod);
  break;
 }

 if (state->cfg.output_mpeg2_in_188_bytes)
  smo_mode |= (1 << 5);

 ret |= dib7000p_write_word(state, 235, smo_mode);
 ret |= dib7000p_write_word(state, 236, fifo_threshold);
 if (state->version != SOC7090)
  ret |= dib7000p_write_word(state, 1286, outreg);

 return ret;
}
