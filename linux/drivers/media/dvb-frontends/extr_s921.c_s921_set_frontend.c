
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int currentfreq; } ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {struct s921_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int dprintk (char*) ;
 int s921_pll_tune (struct dvb_frontend*) ;

__attribute__((used)) static int s921_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct s921_state *state = fe->demodulator_priv;
 int rc;

 dprintk("\n");



 rc = s921_pll_tune(fe);
 if (rc < 0)
  return rc;

 state->currentfreq = p->frequency;

 return 0;
}
