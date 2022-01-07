
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {TYPE_1__* config; } ;
struct TYPE_2__ {int (* sleep ) (struct dvb_frontend*,int ) ;} ;


 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int stub1 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int dib0090_wakeup(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;
 if (state->config->sleep)
  state->config->sleep(fe, 0);


 dib0090_write_reg(state, 0x23, dib0090_read_reg(state, 0x23) | (1 << 14));
 return 0;
}
