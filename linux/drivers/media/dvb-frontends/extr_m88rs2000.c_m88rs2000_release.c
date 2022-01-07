
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;


 int kfree (struct m88rs2000_state*) ;

__attribute__((used)) static void m88rs2000_release(struct dvb_frontend *fe)
{
 struct m88rs2000_state *state = fe->demodulator_priv;
 kfree(state);
}
