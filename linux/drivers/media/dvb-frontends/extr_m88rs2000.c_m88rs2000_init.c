
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m88rs2000_state {TYPE_1__* config; } ;
struct inittab {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ inittab; } ;


 int deb_info (char*) ;
 struct inittab* m88rs2000_setup ;
 int m88rs2000_tab_set (struct m88rs2000_state*,struct inittab*) ;

__attribute__((used)) static int m88rs2000_init(struct dvb_frontend *fe)
{
 struct m88rs2000_state *state = fe->demodulator_priv;
 int ret;

 deb_info("m88rs2000: init chip\n");

 if (state->config->inittab)
  ret = m88rs2000_tab_set(state,
    (struct inittab *)state->config->inittab);
 else
  ret = m88rs2000_tab_set(state, m88rs2000_setup);

 return ret;
}
