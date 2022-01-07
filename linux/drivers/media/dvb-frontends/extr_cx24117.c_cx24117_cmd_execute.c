
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24117_state* demodulator_priv; } ;
struct cx24117_state {TYPE_1__* priv; } ;
struct cx24117_cmd {int dummy; } ;
struct TYPE_2__ {int fe_lock; } ;


 int cx24117_cmd_execute_nolock (struct dvb_frontend*,struct cx24117_cmd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cx24117_cmd_execute(struct dvb_frontend *fe, struct cx24117_cmd *cmd)
{
 struct cx24117_state *state = fe->demodulator_priv;
 int ret;

 mutex_lock(&state->priv->fe_lock);
 ret = cx24117_cmd_execute_nolock(fe, cmd);
 mutex_unlock(&state->priv->fe_lock);

 return ret;
}
