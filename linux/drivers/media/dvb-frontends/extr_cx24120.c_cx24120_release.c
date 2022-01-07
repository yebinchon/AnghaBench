
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct cx24120_state*) ;

__attribute__((used)) static void cx24120_release(struct dvb_frontend *fe)
{
 struct cx24120_state *state = fe->demodulator_priv;

 dev_dbg(&state->i2c->dev, "Clear state structure\n");
 kfree(state);
}
