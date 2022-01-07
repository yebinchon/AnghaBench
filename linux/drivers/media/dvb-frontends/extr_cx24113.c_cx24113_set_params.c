
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dtv_frontend_properties {int symbol_rate; int frequency; } ;
struct dvb_frontend {struct cx24113_state* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct cx24113_state {int dummy; } ;


 int cx24113_get_status (struct dvb_frontend*,int*) ;
 int cx24113_set_bandwidth (struct cx24113_state*,int) ;
 int cx24113_set_frequency (struct cx24113_state*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int cx24113_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct cx24113_state *state = fe->tuner_priv;

 u32 roll_off = 675;
 u32 bw;

 bw = ((c->symbol_rate/100) * roll_off) / 1000;
 bw += (10000000/100) + 5;
 bw /= 10;
 bw += 1000;
 cx24113_set_bandwidth(state, bw);

 cx24113_set_frequency(state, c->frequency);
 msleep(5);
 return cx24113_get_status(fe, &bw);
}
