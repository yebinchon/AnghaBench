
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int dummy; } ;


 scalar_t__ dib3000mc_read_word (struct dib3000mc_state*,int) ;

__attribute__((used)) static int dib3000mc_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct dib3000mc_state *state = fe->demodulator_priv;
 u16 val = dib3000mc_read_word(state, 392);
 *strength = 65535 - val;
 return 0;
}
