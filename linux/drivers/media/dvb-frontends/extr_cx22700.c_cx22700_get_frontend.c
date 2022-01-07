
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct cx22700_state* demodulator_priv; } ;
struct dtv_frontend_properties {int inversion; } ;
struct cx22700_state {int dummy; } ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int cx22700_get_tps (struct cx22700_state*,struct dtv_frontend_properties*) ;
 int cx22700_readreg (struct cx22700_state*,int) ;

__attribute__((used)) static int cx22700_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *c)
{
 struct cx22700_state* state = fe->demodulator_priv;
 u8 reg09 = cx22700_readreg (state, 0x09);

 c->inversion = reg09 & 0x1 ? INVERSION_ON : INVERSION_OFF;
 return cx22700_get_tps(state, c);
}
