
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int revision; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;

__attribute__((used)) static int dib8000_read_ber(struct dvb_frontend *fe, u32 * ber)
{
 struct dib8000_state *state = fe->demodulator_priv;


 if (state->revision == 0x8090)
  *ber = (dib8000_read_word(state, 562) << 16) |
   dib8000_read_word(state, 563);
 else
  *ber = (dib8000_read_word(state, 560) << 16) |
   dib8000_read_word(state, 561);
 return 0;
}
