
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ix2505v_state {int frequency; } ;
struct dvb_frontend {struct ix2505v_state* tuner_priv; } ;



__attribute__((used)) static int ix2505v_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct ix2505v_state *state = fe->tuner_priv;

 *frequency = state->frequency;

 return 0;
}
