
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_internal {int freq; int srate; } ;
struct stb0899_state {int verbose; struct stb0899_internal internal; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; } ;


 int FE_DEBUG ;
 int dprintk (int ,int ,int,char*) ;

__attribute__((used)) static int stb0899_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *p)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_internal *internal = &state->internal;

 dprintk(state->verbose, FE_DEBUG, 1, "Get params");
 p->symbol_rate = internal->srate;
 p->frequency = internal->freq;

 return 0;
}
