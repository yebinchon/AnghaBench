
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;


 int m88rs2000_shutdown ;
 int m88rs2000_tab_set (struct m88rs2000_state*,int ) ;

__attribute__((used)) static int m88rs2000_sleep(struct dvb_frontend *fe)
{
 struct m88rs2000_state *state = fe->demodulator_priv;
 int ret;

 ret = m88rs2000_tab_set(state, m88rs2000_shutdown);
 return ret;
}
