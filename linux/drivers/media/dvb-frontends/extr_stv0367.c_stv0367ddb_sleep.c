
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0367_state {int activedemod; } ;
struct dvb_frontend {struct stv0367_state* demodulator_priv; } ;


 int EINVAL ;

 void* demod_none ;

 int stv0367cab_sleep (struct dvb_frontend*) ;
 int stv0367ter_sleep (struct dvb_frontend*) ;

__attribute__((used)) static int stv0367ddb_sleep(struct dvb_frontend *fe)
{
 struct stv0367_state *state = fe->demodulator_priv;

 switch (state->activedemod) {
 case 128:
  state->activedemod = demod_none;
  return stv0367ter_sleep(fe);
 case 129:
  state->activedemod = demod_none;
  return stv0367cab_sleep(fe);
 default:
  break;
 }

 return -EINVAL;
}
