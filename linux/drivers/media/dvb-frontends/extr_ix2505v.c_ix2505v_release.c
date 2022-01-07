
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix2505v_state {int dummy; } ;
struct dvb_frontend {struct ix2505v_state* tuner_priv; } ;


 int kfree (struct ix2505v_state*) ;

__attribute__((used)) static void ix2505v_release(struct dvb_frontend *fe)
{
 struct ix2505v_state *state = fe->tuner_priv;

 fe->tuner_priv = ((void*)0);
 kfree(state);

}
