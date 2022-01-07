
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int revision; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;

__attribute__((used)) static u16 dib8000_read_lock(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;

 if (state->revision == 0x8090)
  return dib8000_read_word(state, 570);
 return dib8000_read_word(state, 568);
}
