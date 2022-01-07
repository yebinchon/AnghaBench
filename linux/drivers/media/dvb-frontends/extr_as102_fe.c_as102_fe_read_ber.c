
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct as102_state* demodulator_priv; } ;
struct as102_state {int ber; } ;



__attribute__((used)) static int as102_fe_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct as102_state *state = fe->demodulator_priv;

 *ber = state->ber;

 return 0;
}
