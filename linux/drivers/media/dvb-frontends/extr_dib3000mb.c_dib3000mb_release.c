
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int kfree (struct dib3000_state*) ;

__attribute__((used)) static void dib3000mb_release(struct dvb_frontend* fe)
{
 struct dib3000_state *state = fe->demodulator_priv;
 kfree(state);
}
