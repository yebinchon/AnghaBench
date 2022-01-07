
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int revision; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;

__attribute__((used)) static int dib8000_read_unc_blocks(struct dvb_frontend *fe, u32 * unc)
{
 struct dib8000_state *state = fe->demodulator_priv;


 if (state->revision == 0x8090)
  *unc = dib8000_read_word(state, 567);
 else
  *unc = dib8000_read_word(state, 565);
 return 0;
}
