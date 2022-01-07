
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct cx24113_state* tuner_priv; } ;
struct cx24113_state {int frequency; } ;



__attribute__((used)) static int cx24113_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct cx24113_state *state = fe->tuner_priv;
 *frequency = state->frequency;
 return 0;
}
