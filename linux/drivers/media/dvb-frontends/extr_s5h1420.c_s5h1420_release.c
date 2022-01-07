
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5h1420_state {int tuner_i2c_adapter; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct s5h1420_state*) ;

__attribute__((used)) static void s5h1420_release(struct dvb_frontend* fe)
{
 struct s5h1420_state* state = fe->demodulator_priv;
 i2c_del_adapter(&state->tuner_i2c_adapter);
 kfree(state);
}
