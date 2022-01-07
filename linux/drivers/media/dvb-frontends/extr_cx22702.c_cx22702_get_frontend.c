
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct cx22702_state* demodulator_priv; } ;
struct dtv_frontend_properties {int inversion; } ;
struct cx22702_state {int dummy; } ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int cx22702_get_tps (struct cx22702_state*,struct dtv_frontend_properties*) ;
 int cx22702_readreg (struct cx22702_state*,int) ;

__attribute__((used)) static int cx22702_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *c)
{
 struct cx22702_state *state = fe->demodulator_priv;

 u8 reg0C = cx22702_readreg(state, 0x0C);

 c->inversion = reg0C & 0x1 ? INVERSION_ON : INVERSION_OFF;
 return cx22702_get_tps(state, c);
}
