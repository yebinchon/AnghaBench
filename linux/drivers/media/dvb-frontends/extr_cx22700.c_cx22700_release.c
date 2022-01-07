
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx22700_state* demodulator_priv; } ;
struct cx22700_state {int dummy; } ;


 int kfree (struct cx22700_state*) ;

__attribute__((used)) static void cx22700_release(struct dvb_frontend* fe)
{
 struct cx22700_state* state = fe->demodulator_priv;
 kfree(state);
}
