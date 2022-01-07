
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ strength; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct drxk_state* demodulator_priv; } ;
struct drxk_state {scalar_t__ m_drxk_state; } ;
struct TYPE_3__ {int uvalue; } ;


 scalar_t__ DRXK_NO_DEV ;
 scalar_t__ DRXK_UNINITIALIZED ;
 int EAGAIN ;
 int ENODEV ;
 int dprintk (int,char*) ;

__attribute__((used)) static int drxk_read_signal_strength(struct dvb_frontend *fe,
         u16 *strength)
{
 struct drxk_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 dprintk(1, "\n");

 if (state->m_drxk_state == DRXK_NO_DEV)
  return -ENODEV;
 if (state->m_drxk_state == DRXK_UNINITIALIZED)
  return -EAGAIN;

 *strength = c->strength.stat[0].uvalue;
 return 0;
}
