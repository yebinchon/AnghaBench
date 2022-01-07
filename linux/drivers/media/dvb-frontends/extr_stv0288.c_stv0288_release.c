
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0288_state {int dummy; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;


 int kfree (struct stv0288_state*) ;

__attribute__((used)) static void stv0288_release(struct dvb_frontend *fe)
{
 struct stv0288_state *state = fe->demodulator_priv;
 kfree(state);
}
