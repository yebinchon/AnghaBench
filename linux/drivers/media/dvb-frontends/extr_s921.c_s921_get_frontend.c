
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int currentfreq; } ;
struct dvb_frontend {struct s921_state* demodulator_priv; } ;
struct dtv_frontend_properties {int delivery_system; int frequency; } ;


 int SYS_ISDBT ;

__attribute__((used)) static int s921_get_frontend(struct dvb_frontend *fe,
        struct dtv_frontend_properties *p)
{
 struct s921_state *state = fe->demodulator_priv;


 p->frequency = state->currentfreq;
 p->delivery_system = SYS_ISDBT;

 return 0;
}
