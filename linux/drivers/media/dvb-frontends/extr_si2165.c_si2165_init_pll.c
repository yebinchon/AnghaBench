
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ref_freq_hz; } ;
struct si2165_state {int fvco_hz; unsigned int adc_clk; unsigned int sys_clk; TYPE_1__ config; } ;


 int REG_PLL_DIVL ;
 int si2165_write (struct si2165_state*,int ,unsigned int*,int) ;

__attribute__((used)) static int si2165_init_pll(struct si2165_state *state)
{
 u32 ref_freq_hz = state->config.ref_freq_hz;
 u8 divr = 1;
 u8 divp = 1;
 u8 divn = 56;
 u8 divm = 8;
 u8 divl = 12;
 u8 buf[4];





 switch (ref_freq_hz) {
 case 16000000u:
  divn = 56;
  break;
 case 24000000u:
  divr = 2;
  divp = 4;
  divn = 19;
  break;
 default:

  if (ref_freq_hz > 16000000u)
   divr = 2;





  if (1624000000u * divr > ref_freq_hz * 2u * 63u)
   divp = 4;


  divn = 1624000000u * divr / (ref_freq_hz * 2u * divp);
  break;
 }


 state->fvco_hz = ref_freq_hz / divr
   * 2u * divn * divp;
 state->adc_clk = state->fvco_hz / (divm * 4u);
 state->sys_clk = state->fvco_hz / (divl * 2u);


 buf[0] = divl;
 buf[1] = divm;
 buf[2] = (divn & 0x3f) | ((divp == 1) ? 0x40 : 0x00) | 0x80;
 buf[3] = divr;
 return si2165_write(state, REG_PLL_DIVL, buf, 4);
}
