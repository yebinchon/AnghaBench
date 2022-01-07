
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp8psk_fe_state {int dummy; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;


 int kfree (struct gp8psk_fe_state*) ;

__attribute__((used)) static void gp8psk_fe_release(struct dvb_frontend* fe)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;

 kfree(st);
}
