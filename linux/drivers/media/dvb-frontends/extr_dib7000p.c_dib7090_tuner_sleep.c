
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int tuner_enable; } ;


 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int dib7090_tuner_sleep(struct dvb_frontend *fe, int onoff)
{
 struct dib7000p_state *state = fe->demodulator_priv;
 u16 en_cur_state;

 dprintk("sleep dib7090: %d\n", onoff);

 en_cur_state = dib7000p_read_word(state, 1922);

 if (en_cur_state > 0xff)
  state->tuner_enable = en_cur_state;

 if (onoff)
  en_cur_state &= 0x00ff;
 else {
  if (state->tuner_enable != 0)
   en_cur_state = state->tuner_enable;
 }

 dib7000p_write_word(state, 1922, en_cur_state);

 return 0;
}
