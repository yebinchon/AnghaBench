
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct dib0090_state {int* rf_ramp; int rf_gain_limit; int* bb_ramp; int current_gain; int* gain; int rf_lt_def; int bb_1_def; int* gain_reg; } ;
typedef int s16 ;


 int GAIN_ALPHA ;
 int WBD_ALPHA ;
 int dib0090_write_reg (struct dib0090_state*,int ,int) ;
 int dprintk (char*,int,int,int,int,int,int,int) ;
 int * gain_reg_addr ;

__attribute__((used)) static void dib0090_gain_apply(struct dib0090_state *state, s16 gain_delta, s16 top_delta, u8 force)
{
 u16 rf, bb, ref;
 u16 i, v, gain_reg[4] = { 0 }, gain;
 const u16 *g;

 if (top_delta < -511)
  top_delta = -511;
 if (top_delta > 511)
  top_delta = 511;

 if (force) {
  top_delta *= (1 << WBD_ALPHA);
  gain_delta *= (1 << GAIN_ALPHA);
 }

 if (top_delta >= ((s16) (state->rf_ramp[0] << WBD_ALPHA) - state->rf_gain_limit))
  state->rf_gain_limit = state->rf_ramp[0] << WBD_ALPHA;
 else
  state->rf_gain_limit += top_delta;

 if (state->rf_gain_limit < 0)
  state->rf_gain_limit = 0;


 gain = ((state->rf_gain_limit >> WBD_ALPHA) + state->bb_ramp[0]) << GAIN_ALPHA;
 if (gain_delta >= ((s16) gain - state->current_gain))
  state->current_gain = gain;
 else
  state->current_gain += gain_delta;

 if (state->current_gain < 0)
  state->current_gain = 0;


 gain = state->current_gain >> GAIN_ALPHA;


 if (gain > (state->rf_gain_limit >> WBD_ALPHA)) {
  rf = state->rf_gain_limit >> WBD_ALPHA;
  bb = gain - rf;
  if (bb > state->bb_ramp[0])
   bb = state->bb_ramp[0];
 } else {
  rf = gain;
  bb = 0;
 }

 state->gain[0] = rf;
 state->gain[1] = bb;



 g = state->rf_ramp + 1;
 ref = rf;
 for (i = 0; i < 7; i++) {
  if (g[0] == 0 || ref < (g[1] - g[0]))
   v = 0;
  else if (ref >= g[1])
   v = g[2];
  else
   v = ((ref - (g[1] - g[0])) * g[2]) / g[0];

  if (i == 0)
   gain_reg[0] = v;
  else if (i == 1)
   gain_reg[0] |= v << 7;
  else if (i == 2)
   gain_reg[1] = v;
  else if (i == 3)
   gain_reg[1] |= v << 7;
  else if (i == 4)
   gain_reg[2] = v | state->rf_lt_def;
  else if (i == 5)
   gain_reg[3] = v << 3;
  else if (i == 6)
   gain_reg[3] |= v << 8;

  g += 3;


  if (i == 4) {
   g = state->bb_ramp + 1;
   ref = bb;
  }
 }
 gain_reg[3] |= state->bb_1_def;
 gain_reg[3] |= ((bb % 10) * 100) / 125;







 for (i = 0; i < 4; i++) {
  v = gain_reg[i];
  if (force || state->gain_reg[i] != v) {
   state->gain_reg[i] = v;
   dib0090_write_reg(state, gain_reg_addr[i], v);
  }
 }
}
