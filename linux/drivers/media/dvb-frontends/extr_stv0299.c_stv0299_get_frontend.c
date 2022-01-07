
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv0299_state {TYPE_1__* config; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; int fec_inner; int inversion; } ;
typedef int s32 ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {int mclk; scalar_t__ invert; } ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int stv0299_get_fec (struct stv0299_state*) ;
 int stv0299_get_symbolrate (struct stv0299_state*) ;
 int stv0299_readreg (struct stv0299_state*,int) ;

__attribute__((used)) static int stv0299_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *p)
{
 struct stv0299_state* state = fe->demodulator_priv;
 s32 derot_freq;
 int invval;

 derot_freq = (s32)(s16) ((stv0299_readreg (state, 0x22) << 8)
    | stv0299_readreg (state, 0x23));

 derot_freq *= (state->config->mclk >> 16);
 derot_freq += 500;
 derot_freq /= 1000;

 p->frequency += derot_freq;

 invval = stv0299_readreg (state, 0x0c) & 1;
 if (state->config->invert) invval = (~invval) & 1;
 p->inversion = invval ? INVERSION_ON : INVERSION_OFF;

 p->fec_inner = stv0299_get_fec(state);
 p->symbol_rate = stv0299_get_symbolrate(state);

 return 0;
}
