
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb6100_state {int bandwidth; int reference; } ;
struct dvb_frontend {struct stb6100_state* tuner_priv; } ;



__attribute__((used)) static int stb6100_init(struct dvb_frontend *fe)
{
 struct stb6100_state *state = fe->tuner_priv;
 int refclk = 27000000;





 state->bandwidth = 36000000;
 state->reference = refclk / 1000;


 return 0;
}
