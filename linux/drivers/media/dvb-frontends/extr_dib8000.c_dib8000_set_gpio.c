
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 int dib8000_cfg_gpio (struct dib8000_state*,int ,int ,int ) ;

__attribute__((used)) static int dib8000_set_gpio(struct dvb_frontend *fe, u8 num, u8 dir, u8 val)
{
 struct dib8000_state *state = fe->demodulator_priv;
 return dib8000_cfg_gpio(state, num, dir, val);
}
