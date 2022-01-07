
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_read_word (struct dib7000p_state*,int) ;

__attribute__((used)) static int dib7000p_get_agc_values(struct dvb_frontend *fe,
  u16 *agc_global, u16 *agc1, u16 *agc2, u16 *wbd)
{
 struct dib7000p_state *state = fe->demodulator_priv;

 if (agc_global != ((void*)0))
  *agc_global = dib7000p_read_word(state, 394);
 if (agc1 != ((void*)0))
  *agc1 = dib7000p_read_word(state, 392);
 if (agc2 != ((void*)0))
  *agc2 = dib7000p_read_word(state, 393);
 if (wbd != ((void*)0))
  *wbd = dib7000p_read_word(state, 397);

 return 0;
}
