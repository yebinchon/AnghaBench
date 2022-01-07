
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {struct dvb_frontend** fe; } ;


 int MAX_NUMBER_OF_FRONTENDS ;

struct dvb_frontend *dib9000_get_slave_frontend(struct dvb_frontend *fe, int slave_index)
{
 struct dib9000_state *state = fe->demodulator_priv;

 if (slave_index >= MAX_NUMBER_OF_FRONTENDS)
  return ((void*)0);
 return state->fe[slave_index];
}
