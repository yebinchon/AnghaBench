
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt312_state {int dummy; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;
struct dtv_frontend_properties {int fec_inner; int symbol_rate; int inversion; } ;


 int mt312_get_code_rate (struct mt312_state*,int *) ;
 int mt312_get_inversion (struct mt312_state*,int *) ;
 int mt312_get_symbol_rate (struct mt312_state*,int *) ;

__attribute__((used)) static int mt312_get_frontend(struct dvb_frontend *fe,
         struct dtv_frontend_properties *p)
{
 struct mt312_state *state = fe->demodulator_priv;
 int ret;

 ret = mt312_get_inversion(state, &p->inversion);
 if (ret < 0)
  return ret;

 ret = mt312_get_symbol_rate(state, &p->symbol_rate);
 if (ret < 0)
  return ret;

 ret = mt312_get_code_rate(state, &p->fec_inner);
 if (ret < 0)
  return ret;

 return 0;
}
