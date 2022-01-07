
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int verbose; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int FE_DEBUG ;
 int dprintk (int ,int ,int,char*) ;
 int kfree (struct stb0899_state*) ;

__attribute__((used)) static void stb0899_release(struct dvb_frontend *fe)
{
 struct stb0899_state *state = fe->demodulator_priv;

 dprintk(state->verbose, FE_DEBUG, 1, "Release Frontend");
 kfree(state);
}
