
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l64781_state {int dummy; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;


 int kfree (struct l64781_state*) ;

__attribute__((used)) static void l64781_release(struct dvb_frontend* fe)
{
 struct l64781_state* state = fe->demodulator_priv;
 kfree(state);
}
