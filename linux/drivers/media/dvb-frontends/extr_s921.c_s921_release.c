
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int dummy; } ;
struct dvb_frontend {struct s921_state* demodulator_priv; } ;


 int dprintk (char*) ;
 int kfree (struct s921_state*) ;

__attribute__((used)) static void s921_release(struct dvb_frontend *fe)
{
 struct s921_state *state = fe->demodulator_priv;

 dprintk("\n");
 kfree(state);
}
