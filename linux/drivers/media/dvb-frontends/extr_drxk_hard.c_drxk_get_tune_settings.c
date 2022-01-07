
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {int min_delay_ms; int step_size; int max_drift; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct drxk_state* demodulator_priv; } ;
struct drxk_state {scalar_t__ m_drxk_state; } ;


 scalar_t__ DRXK_NO_DEV ;
 scalar_t__ DRXK_UNINITIALIZED ;
 int EAGAIN ;
 int EINVAL ;
 int ENODEV ;



 int dprintk (int,char*) ;

__attribute__((used)) static int drxk_get_tune_settings(struct dvb_frontend *fe,
      struct dvb_frontend_tune_settings *sets)
{
 struct drxk_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;

 dprintk(1, "\n");

 if (state->m_drxk_state == DRXK_NO_DEV)
  return -ENODEV;
 if (state->m_drxk_state == DRXK_UNINITIALIZED)
  return -EAGAIN;

 switch (p->delivery_system) {
 case 130:
 case 129:
 case 128:
  sets->min_delay_ms = 3000;
  sets->max_drift = 0;
  sets->step_size = 0;
  return 0;
 default:
  return -EINVAL;
 }
}
