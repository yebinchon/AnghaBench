
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int wbd_ref; } ;


 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static int dib8000_set_wbd_ref(struct dvb_frontend *fe, u16 value)
{
 struct dib8000_state *state = fe->demodulator_priv;
 if (value > 4095)
  value = 4095;
 state->wbd_ref = value;
 return dib8000_write_word(state, 106, value);
}
