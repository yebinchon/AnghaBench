
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int dummy; } ;


 int dib9000_cfg_gpio (struct dib9000_state*,int ,int ,int ) ;

int dib9000_set_gpio(struct dvb_frontend *fe, u8 num, u8 dir, u8 val)
{
 struct dib9000_state *state = fe->demodulator_priv;
 return dib9000_cfg_gpio(state, num, dir, val);
}
