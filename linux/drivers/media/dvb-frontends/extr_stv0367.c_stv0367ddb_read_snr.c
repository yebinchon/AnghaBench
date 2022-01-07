
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stv0367_state {int activedemod; } ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct stv0367_state* demodulator_priv; } ;
struct TYPE_3__ {int uvalue; int scale; } ;


 int FE_SCALE_DECIBEL ;
 int FE_SCALE_NOT_AVAILABLE ;


 int intlog2 (int) ;
 int stv0367cab_snr_power (struct dvb_frontend*) ;
 int stv0367cab_snr_readreg (struct dvb_frontend*,int ) ;
 int stv0367ter_snr_readreg (struct dvb_frontend*) ;

__attribute__((used)) static void stv0367ddb_read_snr(struct dvb_frontend *fe)
{
 struct stv0367_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 int cab_pwr;
 u32 regval, tmpval, snrval = 0;

 switch (state->activedemod) {
 case 128:
  snrval = stv0367ter_snr_readreg(fe);
  break;
 case 129:
  cab_pwr = stv0367cab_snr_power(fe);
  regval = stv0367cab_snr_readreg(fe, 0);


  if (!regval) {
   snrval = 0;
   break;
  }

  tmpval = (cab_pwr * 320) / regval;
  snrval = ((tmpval != 0) ? (intlog2(tmpval) / 5581) : 0);
  break;
 default:
  p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  return;
 }

 p->cnr.stat[0].scale = FE_SCALE_DECIBEL;
 p->cnr.stat[0].uvalue = snrval;
}
