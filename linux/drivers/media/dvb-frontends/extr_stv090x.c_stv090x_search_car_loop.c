
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {int search_range; TYPE_1__* internal; } ;
typedef int s32 ;
struct TYPE_2__ {int mclk; } ;


 int ALGOSWRST_FIELD ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int DMDISTATE ;
 int FE_ERROR ;
 int PDELCTRL1 ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*) ;
 int stv090x_chk_signal (struct stv090x_state*) ;
 int stv090x_get_dmdlock (struct stv090x_state*,int) ;

__attribute__((used)) static int stv090x_search_car_loop(struct stv090x_state *state, s32 inc, s32 timeout, int zigzag, s32 steps_max)
{
 int no_signal, lock = 0;
 s32 cpt_step = 0, offst_freq, car_max;
 u32 reg;

 car_max = state->search_range / 1000;
 car_max += (car_max / 10);
 car_max = (65536 * car_max / 2);
 car_max /= (state->internal->mclk / 1000);
 if (car_max > 0x4000)
  car_max = 0x4000;

 if (zigzag)
  offst_freq = 0;
 else
  offst_freq = -car_max + inc;

 do {
  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x1c) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT1, ((offst_freq / 256) & 0xff)) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT0, offst_freq & 0xff) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x18) < 0)
   goto err;

  reg = STV090x_READ_DEMOD(state, PDELCTRL1);
  STV090x_SETFIELD_Px(reg, ALGOSWRST_FIELD, 0x1);
  if (STV090x_WRITE_DEMOD(state, PDELCTRL1, reg) < 0)
   goto err;

  if (zigzag) {
   if (offst_freq >= 0)
    offst_freq = -offst_freq - 2 * inc;
   else
    offst_freq = -offst_freq;
  } else {
   offst_freq += 2 * inc;
  }

  cpt_step++;

  lock = stv090x_get_dmdlock(state, timeout);
  no_signal = stv090x_chk_signal(state);

 } while ((!lock) &&
   (!no_signal) &&
    ((offst_freq - inc) < car_max) &&
    ((offst_freq + inc) > -car_max) &&
    (cpt_step < steps_max));

 reg = STV090x_READ_DEMOD(state, PDELCTRL1);
 STV090x_SETFIELD_Px(reg, ALGOSWRST_FIELD, 0);
 if (STV090x_WRITE_DEMOD(state, PDELCTRL1, reg) < 0)
   goto err;

 return lock;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
