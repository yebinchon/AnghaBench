
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct si2165_state {int has_dvbc; } ;
struct dtv_frontend_properties {scalar_t__ symbol_rate; int modulation; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct si2165_state* demodulator_priv; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;






 int REG_LOCK_TIMEOUT ;
 int REG_REQ_CONSTELLATION ;
 int dvbc_regs ;
 int si2165_adjust_pll_divl (struct si2165_state*,int) ;
 int si2165_set_oversamp (struct si2165_state*,scalar_t__ const) ;
 int si2165_write_reg_list (struct si2165_state*,int ,int ) ;
 int si2165_writereg32 (struct si2165_state*,int ,int) ;
 int si2165_writereg8 (struct si2165_state*,int ,int) ;

__attribute__((used)) static int si2165_set_frontend_dvbc(struct dvb_frontend *fe)
{
 struct si2165_state *state = fe->demodulator_priv;
 int ret;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 const u32 dvb_rate = p->symbol_rate;
 u8 u8tmp;

 if (!state->has_dvbc)
  return -EINVAL;

 if (dvb_rate == 0)
  return -EINVAL;

 ret = si2165_adjust_pll_divl(state, 14);
 if (ret < 0)
  return ret;


 ret = si2165_set_oversamp(state, dvb_rate);
 if (ret < 0)
  return ret;

 switch (p->modulation) {
 case 128:
  u8tmp = 0x3;
  break;
 case 132:
  u8tmp = 0x7;
  break;
 case 130:
  u8tmp = 0x8;
  break;
 case 129:
  u8tmp = 0x9;
  break;
 case 133:
  u8tmp = 0xa;
  break;
 case 131:
 default:
  u8tmp = 0xb;
  break;
 }
 ret = si2165_writereg8(state, REG_REQ_CONSTELLATION, u8tmp);
 if (ret < 0)
  return ret;

 ret = si2165_writereg32(state, REG_LOCK_TIMEOUT, 0x007a1200);
 if (ret < 0)
  return ret;

 ret = si2165_write_reg_list(state, dvbc_regs, ARRAY_SIZE(dvbc_regs));
 if (ret < 0)
  return ret;

 return 0;
}
