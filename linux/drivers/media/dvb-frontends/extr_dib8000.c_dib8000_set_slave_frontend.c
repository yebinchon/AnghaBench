
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {struct dvb_frontend** fe; } ;


 int ENOMEM ;
 size_t MAX_NUMBER_OF_FRONTENDS ;
 int dprintk (char*,...) ;

__attribute__((used)) static int dib8000_set_slave_frontend(struct dvb_frontend *fe, struct dvb_frontend *fe_slave)
{
 struct dib8000_state *state = fe->demodulator_priv;
 u8 index_frontend = 1;

 while ((index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != ((void*)0)))
  index_frontend++;
 if (index_frontend < MAX_NUMBER_OF_FRONTENDS) {
  dprintk("set slave fe %p to index %i\n", fe_slave, index_frontend);
  state->fe[index_frontend] = fe_slave;
  return 0;
 }

 dprintk("too many slave frontend\n");
 return -ENOMEM;
}
