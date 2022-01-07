
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_internal {int master_clk; } ;
struct stb0899_state {struct stb0899_internal internal; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;


 int ACRPRESC ;
 int EINVAL ;
 int ETIMEDOUT ;


 int STB0899_ACRDIV1 ;
 int STB0899_ACRPRESC ;
 int STB0899_DISEQCOCFG ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 scalar_t__ stb0899_wait_diseqc_txidle (struct stb0899_state*,int) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;

__attribute__((used)) static int stb0899_set_tone(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_internal *internal = &state->internal;

 u8 div, reg;


 if (stb0899_wait_diseqc_txidle(state, 100) < 0)
  return -ETIMEDOUT;

 switch (tone) {
 case 128:
  div = (internal->master_clk / 100) / 5632;
  div = (div + 5) / 10;
  stb0899_write_reg(state, STB0899_DISEQCOCFG, 0x66);
  reg = stb0899_read_reg(state, STB0899_ACRPRESC);
  STB0899_SETFIELD_VAL(ACRPRESC, reg, 0x03);
  stb0899_write_reg(state, STB0899_ACRPRESC, reg);
  stb0899_write_reg(state, STB0899_ACRDIV1, div);
  break;
 case 129:
  stb0899_write_reg(state, STB0899_DISEQCOCFG, 0x20);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
