
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int diversity_onoff; int revision; int differential_constellation; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib8000_set_diversity_in(struct dvb_frontend *fe, int onoff)
{
 struct dib8000_state *state = fe->demodulator_priv;
 u16 tmp, sync_wait = dib8000_read_word(state, 273) & 0xfff0;

 dprintk("set diversity input to %i\n", onoff);
 if (!state->differential_constellation) {
  dib8000_write_word(state, 272, 1 << 9);
  dib8000_write_word(state, 273, sync_wait | (1 << 2) | 2);
 } else {
  dib8000_write_word(state, 272, 0);
  dib8000_write_word(state, 273, sync_wait);
 }
 state->diversity_onoff = onoff;

 switch (onoff) {
 case 0:
  dib8000_write_word(state, 270, 1);
  dib8000_write_word(state, 271, 0);
  break;
 case 1:
  dib8000_write_word(state, 270, 6);
  dib8000_write_word(state, 271, 6);
  break;
 case 2:
  dib8000_write_word(state, 270, 0);
  dib8000_write_word(state, 271, 1);
  break;
 }

 if (state->revision == 0x8002) {
  tmp = dib8000_read_word(state, 903);
  dib8000_write_word(state, 903, tmp & ~(1 << 3));
  msleep(30);
  dib8000_write_word(state, 903, tmp | (1 << 3));
 }
 return 0;
}
