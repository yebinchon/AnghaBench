
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stv0367_state {int activedemod; TYPE_2__* config; int fe; TYPE_1__* cab_state; } ;
struct TYPE_4__ {int xtal; } ;
struct TYPE_3__ {int adc_clk; int mclk; } ;


 int R367TER_ANACTRL ;
 int R367TER_ANADIGCTRL ;
 int R367TER_DEBUG_LT4 ;
 int R367TER_DEBUG_LT5 ;
 int R367TER_DEBUG_LT6 ;
 int R367TER_DEBUG_LT7 ;
 int R367TER_DEBUG_LT8 ;
 int R367TER_DEBUG_LT9 ;
 int R367TER_DUAL_AD12 ;
 int R367TER_TOPCTRL ;
 int STV0367_ICSPEED_58000 ;
 int demod_cab ;
 int msleep (int) ;
 int stv0367_pll_setup (struct stv0367_state*,int ,int ) ;
 int stv0367_writereg (struct stv0367_state*,int ,int) ;
 int stv0367cab_get_adc_freq (int *,int ) ;
 int stv0367cab_get_mclk (int *,int ) ;

__attribute__((used)) static void stv0367ddb_setup_cab(struct stv0367_state *state)
{
 stv0367_writereg(state, R367TER_DEBUG_LT4, 0x00);
 stv0367_writereg(state, R367TER_DEBUG_LT5, 0x01);
 stv0367_writereg(state, R367TER_DEBUG_LT6, 0x06);
 stv0367_writereg(state, R367TER_DEBUG_LT7, 0x03);
 stv0367_writereg(state, R367TER_DEBUG_LT8, 0x00);
 stv0367_writereg(state, R367TER_DEBUG_LT9, 0x00);



 stv0367_writereg(state, R367TER_ANADIGCTRL, 0x8B);

 stv0367_writereg(state, R367TER_DUAL_AD12, 0x04);



 stv0367_writereg(state, R367TER_ANACTRL, 0x0D);

 stv0367_writereg(state, R367TER_TOPCTRL, 0x10);


 stv0367_pll_setup(state, STV0367_ICSPEED_58000, state->config->xtal);

 msleep(50);

 stv0367_writereg(state, R367TER_ANACTRL, 0x00);

 state->cab_state->mclk = stv0367cab_get_mclk(&state->fe,
  state->config->xtal);
 state->cab_state->adc_clk = stv0367cab_get_adc_freq(&state->fe,
  state->config->xtal);

 state->activedemod = demod_cab;
}
