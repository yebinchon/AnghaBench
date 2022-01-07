
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv0367_state {int activedemod; TYPE_1__* config; } ;
struct TYPE_2__ {int xtal; } ;


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
 int STV0367_ICSPEED_53125 ;
 int demod_ter ;
 int msleep (int) ;
 int stv0367_pll_setup (struct stv0367_state*,int ,int ) ;
 int stv0367_writereg (struct stv0367_state*,int ,int) ;

__attribute__((used)) static void stv0367ddb_setup_ter(struct stv0367_state *state)
{
 stv0367_writereg(state, R367TER_DEBUG_LT4, 0x00);
 stv0367_writereg(state, R367TER_DEBUG_LT5, 0x00);
 stv0367_writereg(state, R367TER_DEBUG_LT6, 0x00);
 stv0367_writereg(state, R367TER_DEBUG_LT7, 0x00);
 stv0367_writereg(state, R367TER_DEBUG_LT8, 0x00);
 stv0367_writereg(state, R367TER_DEBUG_LT9, 0x00);



 stv0367_writereg(state, R367TER_ANADIGCTRL, 0x89);
 stv0367_writereg(state, R367TER_DUAL_AD12, 0x04);



 stv0367_writereg(state, R367TER_ANACTRL, 0x0D);
 stv0367_writereg(state, R367TER_TOPCTRL, 0x00);


 stv0367_pll_setup(state, STV0367_ICSPEED_53125, state->config->xtal);

 msleep(50);

 stv0367_writereg(state, R367TER_ANACTRL, 0x00);

 state->activedemod = demod_ter;
}
