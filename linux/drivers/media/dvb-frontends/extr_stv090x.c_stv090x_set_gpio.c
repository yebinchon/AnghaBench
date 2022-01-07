
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;


 int GPIOx_CONFIG_FIELD ;
 int GPIOx_OPD_FIELD ;
 int GPIOx_XOR_FIELD ;
 int STV090x_GPIOxCFG (int ) ;
 int STV090x_SETFIELD (int ,int ,int ) ;
 int stv090x_write_reg (struct stv090x_state*,int ,int ) ;

__attribute__((used)) static int stv090x_set_gpio(struct dvb_frontend *fe, u8 gpio, u8 dir,
       u8 value, u8 xor_value)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u8 reg = 0;

 STV090x_SETFIELD(reg, GPIOx_OPD_FIELD, dir);
 STV090x_SETFIELD(reg, GPIOx_CONFIG_FIELD, value);
 STV090x_SETFIELD(reg, GPIOx_XOR_FIELD, xor_value);

 return stv090x_write_reg(state, STV090x_GPIOxCFG(gpio), reg);
}
