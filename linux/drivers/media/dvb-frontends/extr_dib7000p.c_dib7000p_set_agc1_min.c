
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_write_word (struct dib7000p_state*,int,int ) ;

__attribute__((used)) static int dib7000p_set_agc1_min(struct dvb_frontend *fe, u16 v)
{
 struct dib7000p_state *state = fe->demodulator_priv;
 return dib7000p_write_word(state, 108, v);
}
