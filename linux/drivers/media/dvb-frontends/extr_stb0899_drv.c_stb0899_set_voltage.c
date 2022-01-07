
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int dummy; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;



 int STB0899_GPIO00CFG ;
 int STB0899_GPIO01CFG ;
 int STB0899_GPIO02CFG ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;

__attribute__((used)) static int stb0899_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 struct stb0899_state *state = fe->demodulator_priv;

 switch (voltage) {
 case 130:
  stb0899_write_reg(state, STB0899_GPIO00CFG, 0x82);
  stb0899_write_reg(state, STB0899_GPIO01CFG, 0x02);
  stb0899_write_reg(state, STB0899_GPIO02CFG, 0x00);
  break;
 case 129:
  stb0899_write_reg(state, STB0899_GPIO00CFG, 0x02);
  stb0899_write_reg(state, STB0899_GPIO01CFG, 0x02);
  stb0899_write_reg(state, STB0899_GPIO02CFG, 0x82);
  break;
 case 128:
  stb0899_write_reg(state, STB0899_GPIO00CFG, 0x82);
  stb0899_write_reg(state, STB0899_GPIO01CFG, 0x82);
  stb0899_write_reg(state, STB0899_GPIO02CFG, 0x82);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
