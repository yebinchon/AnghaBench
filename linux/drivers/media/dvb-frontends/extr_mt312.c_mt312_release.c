
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt312_state {int dummy; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;


 int kfree (struct mt312_state*) ;

__attribute__((used)) static void mt312_release(struct dvb_frontend *fe)
{
 struct mt312_state *state = fe->demodulator_priv;
 kfree(state);
}
