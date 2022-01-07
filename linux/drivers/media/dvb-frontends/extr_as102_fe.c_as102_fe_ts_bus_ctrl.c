
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct as102_state* demodulator_priv; } ;
struct as102_state {int elna_cfg; int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stream_ctrl ) (int ,int,int ) ;} ;


 int stub1 (int ,int,int ) ;

__attribute__((used)) static int as102_fe_ts_bus_ctrl(struct dvb_frontend *fe, int acquire)
{
 struct as102_state *state = fe->demodulator_priv;

 return state->ops->stream_ctrl(state->priv, acquire,
          state->elna_cfg);
}
