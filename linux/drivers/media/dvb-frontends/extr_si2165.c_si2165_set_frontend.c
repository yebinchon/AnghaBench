
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct si2165_state {int dummy; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; struct si2165_state* demodulator_priv; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int REG_ADDR_JUMP ;
 int REG_GP_REG0_LSB ;
 int REG_RST_ALL ;
 int REG_START_SYNCHRO ;
 int REG_WDOG_AND_BOOT ;


 int adc_rewrite ;
 int si2165_readreg8 (struct si2165_state*,int ,int *) ;
 int si2165_set_frontend_dvbc (struct dvb_frontend*) ;
 int si2165_set_frontend_dvbt (struct dvb_frontend*) ;
 int si2165_set_if_freq_shift (struct si2165_state*) ;
 int si2165_write_reg_list (struct si2165_state*,int ,int ) ;
 int si2165_writereg32 (struct si2165_state*,int ,int) ;
 int si2165_writereg8 (struct si2165_state*,int ,int) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int si2165_set_frontend(struct dvb_frontend *fe)
{
 struct si2165_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 u32 delsys = p->delivery_system;
 int ret;
 u8 val[3];


 ret = si2165_set_if_freq_shift(state);
 if (ret < 0)
  return ret;

 switch (delsys) {
 case 128:
  ret = si2165_set_frontend_dvbt(fe);
  if (ret < 0)
   return ret;
  break;
 case 129:
  ret = si2165_set_frontend_dvbc(fe);
  if (ret < 0)
   return ret;
  break;
 default:
  return -EINVAL;
 }


 ret = si2165_writereg32(state, REG_ADDR_JUMP, 0xf4000000);
 if (ret < 0)
  return ret;

 if (fe->ops.tuner_ops.set_params)
  fe->ops.tuner_ops.set_params(fe);


 ret = si2165_set_if_freq_shift(state);
 if (ret < 0)
  return ret;


 ret = si2165_readreg8(state, REG_WDOG_AND_BOOT, val);
 if (ret < 0)
  return ret;
 ret = si2165_writereg8(state, REG_WDOG_AND_BOOT, 0x00);
 if (ret < 0)
  return ret;


 ret = si2165_writereg8(state, REG_RST_ALL, 0x00);
 if (ret < 0)
  return ret;

 ret = si2165_writereg32(state, REG_GP_REG0_LSB, 0x00000000);
 if (ret < 0)
  return ret;


 ret = si2165_write_reg_list(state, adc_rewrite,
        ARRAY_SIZE(adc_rewrite));
 if (ret < 0)
  return ret;


 ret = si2165_writereg8(state, REG_START_SYNCHRO, 0x01);
 if (ret < 0)
  return ret;

 ret = si2165_readreg8(state, REG_WDOG_AND_BOOT, val);
 if (ret < 0)
  return ret;

 return 0;
}
