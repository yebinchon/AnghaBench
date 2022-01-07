
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct dib0070_state* tuner_priv; } ;
struct dib0070_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {int (* sleep ) (struct dvb_frontend*,int) ;} ;


 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dib0070_sleep(struct dvb_frontend *fe)
{
 struct dib0070_state *state = fe->tuner_priv;
 if (state->cfg->sleep)
  state->cfg->sleep(fe, 1);
 return 0;
}
