
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5h1420_state {int CON_1_val; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;


 int s5h1420_writereg (struct s5h1420_state*,int,int) ;

__attribute__((used)) static int s5h1420_sleep(struct dvb_frontend* fe)
{
 struct s5h1420_state* state = fe->demodulator_priv;
 state->CON_1_val = 0x12;
 return s5h1420_writereg(state, 0x02, state->CON_1_val);
}
