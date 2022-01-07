
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct regmap {int dummy; } ;
struct mn88443x_priv {struct regmap* regmap_t; struct regmap* regmap_s; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {scalar_t__ delivery_system; } ;
struct dvb_frontend {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; struct mn88443x_priv* demodulator_priv; } ;


 int DOSET1_S ;
 int DOSET1_T ;
 scalar_t__ SYS_ISDBS ;
 scalar_t__ SYS_ISDBT ;
 int TSSET1 ;
 int TSSET1_TSASEL_ISDBS ;
 int TSSET1_TSASEL_ISDBT ;
 int TSSET1_TSASEL_MASK ;
 int TSSET1_TSBSEL_MASK ;
 int TSSET1_TSBSEL_NONE ;
 int TSSET2 ;
 int TSSET3 ;
 int TSSET3_INTASEL_MASK ;
 int TSSET3_INTASEL_S ;
 int TSSET3_INTASEL_T ;
 int TSSET3_INTBSEL_MASK ;
 int TSSET3_INTBSEL_NONE ;
 int mn88443x_s_sleep (struct mn88443x_priv*) ;
 int mn88443x_s_tune (struct mn88443x_priv*,struct dtv_frontend_properties*) ;
 int mn88443x_s_wake (struct mn88443x_priv*) ;
 int mn88443x_t_set_freq (struct mn88443x_priv*) ;
 int mn88443x_t_sleep (struct mn88443x_priv*) ;
 int mn88443x_t_tune (struct mn88443x_priv*,struct dtv_frontend_properties*) ;
 int mn88443x_t_wake (struct mn88443x_priv*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*) ;
 int stub3 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mn88443x_set_frontend(struct dvb_frontend *fe)
{
 struct mn88443x_priv *chip = fe->demodulator_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct regmap *r_s = chip->regmap_s;
 struct regmap *r_t = chip->regmap_t;
 u8 tssel = 0, intsel = 0;

 if (c->delivery_system == SYS_ISDBS) {
  mn88443x_s_wake(chip);
  mn88443x_t_sleep(chip);

  tssel = TSSET1_TSASEL_ISDBS;
  intsel = TSSET3_INTASEL_S;
 } else if (c->delivery_system == SYS_ISDBT) {
  mn88443x_s_sleep(chip);
  mn88443x_t_wake(chip);

  mn88443x_t_set_freq(chip);

  tssel = TSSET1_TSASEL_ISDBT;
  intsel = TSSET3_INTASEL_T;
 }

 regmap_update_bits(r_t, TSSET1,
      TSSET1_TSASEL_MASK | TSSET1_TSBSEL_MASK,
      tssel | TSSET1_TSBSEL_NONE);
 regmap_write(r_t, TSSET2, 0);
 regmap_update_bits(r_t, TSSET3,
      TSSET3_INTASEL_MASK | TSSET3_INTBSEL_MASK,
      intsel | TSSET3_INTBSEL_NONE);

 regmap_write(r_t, DOSET1_T, 0x95);
 regmap_write(r_s, DOSET1_S, 0x80);

 if (c->delivery_system == SYS_ISDBS)
  mn88443x_s_tune(chip, c);
 else if (c->delivery_system == SYS_ISDBT)
  mn88443x_t_tune(chip, c);

 if (fe->ops.tuner_ops.set_params) {
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 1);
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 0);
 }

 return 0;
}
