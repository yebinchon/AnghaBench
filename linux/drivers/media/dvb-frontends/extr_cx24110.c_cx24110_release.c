
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;


 int kfree (struct cx24110_state*) ;

__attribute__((used)) static void cx24110_release(struct dvb_frontend* fe)
{
 struct cx24110_state* state = fe->demodulator_priv;
 kfree(state);
}
