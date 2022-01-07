
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct as102_state* demodulator_priv; } ;
struct as102_state {int signal_strength; } ;



__attribute__((used)) static int as102_fe_read_signal_strength(struct dvb_frontend *fe,
      u16 *strength)
{
 struct as102_state *state = fe->demodulator_priv;

 *strength = (((0xffff * 400) * state->signal_strength + 41000) * 2);

 return 0;
}
