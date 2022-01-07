
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int frequency; int srate; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef enum dvbfe_search { ____Placeholder_dvbfe_search } dvbfe_search ;


 int DVBFE_ALGO_SEARCH_FAILED ;
 int DVBFE_ALGO_SEARCH_SUCCESS ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 int mb86a16_set_fe (struct mb86a16_state*) ;
 int verbose ;

__attribute__((used)) static enum dvbfe_search mb86a16_search(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct mb86a16_state *state = fe->demodulator_priv;

 state->frequency = p->frequency / 1000;
 state->srate = p->symbol_rate / 1000;

 if (!mb86a16_set_fe(state)) {
  dprintk(verbose, MB86A16_ERROR, 1, "Successfully acquired LOCK");
  return DVBFE_ALGO_SEARCH_SUCCESS;
 }

 dprintk(verbose, MB86A16_ERROR, 1, "Lock acquisition failed!");
 return DVBFE_ALGO_SEARCH_FAILED;
}
