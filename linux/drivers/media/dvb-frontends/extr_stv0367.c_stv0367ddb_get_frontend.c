
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0367_state {int activedemod; } ;
struct dvb_frontend {struct stv0367_state* demodulator_priv; } ;
struct dtv_frontend_properties {int dummy; } ;




 int stv0367cab_get_frontend (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int stv0367ter_get_frontend (struct dvb_frontend*,struct dtv_frontend_properties*) ;

__attribute__((used)) static int stv0367ddb_get_frontend(struct dvb_frontend *fe,
       struct dtv_frontend_properties *p)
{
 struct stv0367_state *state = fe->demodulator_priv;

 switch (state->activedemod) {
 case 128:
  return stv0367ter_get_frontend(fe, p);
 case 129:
  return stv0367cab_get_frontend(fe, p);
 default:
  break;
 }

 return 0;
}
