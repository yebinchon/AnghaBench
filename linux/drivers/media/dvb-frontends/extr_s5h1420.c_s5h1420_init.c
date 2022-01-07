
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5h1420_state {int CON_1_val; TYPE_1__* config; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;
struct TYPE_2__ {int serial_mpeg; } ;


 int msleep (int) ;
 int s5h1420_reset (struct s5h1420_state*) ;
 int s5h1420_writereg (struct s5h1420_state*,int,int) ;

__attribute__((used)) static int s5h1420_init (struct dvb_frontend* fe)
{
 struct s5h1420_state* state = fe->demodulator_priv;


 state->CON_1_val = state->config->serial_mpeg << 4;
 s5h1420_writereg(state, 0x02, state->CON_1_val);
 msleep(10);
 s5h1420_reset(state);

 return 0;
}
