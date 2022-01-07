
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;


 int EINVAL ;


 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_wait_for_diseqc (struct cx24123_state*) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;
 int err (char*,int) ;

__attribute__((used)) static int cx24123_set_tone(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
 struct cx24123_state *state = fe->demodulator_priv;
 u8 val;


 cx24123_wait_for_diseqc(state);

 val = cx24123_readreg(state, 0x29) & ~0x40;

 switch (tone) {
 case 128:
  dprintk("setting tone on\n");
  return cx24123_writereg(state, 0x29, val | 0x10);
 case 129:
  dprintk("setting tone off\n");
  return cx24123_writereg(state, 0x29, val & 0xef);
 default:
  err("CASE reached default with tone=%d\n", tone);
  return -EINVAL;
 }

 return 0;
}
