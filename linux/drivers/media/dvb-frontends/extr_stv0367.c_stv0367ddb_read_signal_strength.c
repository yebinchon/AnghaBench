
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stv0367_state {int activedemod; } ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ strength; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct stv0367_state* demodulator_priv; } ;
typedef int s32 ;
struct TYPE_3__ {int uvalue; int scale; } ;


 int FE_SCALE_DECIBEL ;
 int FE_SCALE_NOT_AVAILABLE ;

 int stv0367cab_get_rf_lvl (struct stv0367_state*) ;

__attribute__((used)) static void stv0367ddb_read_signal_strength(struct dvb_frontend *fe)
{
 struct stv0367_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 s32 signalstrength;

 switch (state->activedemod) {
 case 128:
  signalstrength = stv0367cab_get_rf_lvl(state) * 1000;
  break;
 default:
  p->strength.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  return;
 }

 p->strength.stat[0].scale = FE_SCALE_DECIBEL;
 p->strength.stat[0].uvalue = signalstrength;
}
