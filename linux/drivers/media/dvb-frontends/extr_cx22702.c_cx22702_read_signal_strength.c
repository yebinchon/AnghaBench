
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {struct cx22702_state* demodulator_priv; } ;
struct cx22702_state {int dummy; } ;


 int cx22702_readreg (struct cx22702_state*,int) ;

__attribute__((used)) static int cx22702_read_signal_strength(struct dvb_frontend *fe,
 u16 *signal_strength)
{
 struct cx22702_state *state = fe->demodulator_priv;
 u8 reg23;
 reg23 = cx22702_readreg(state, 0x23);
 if (reg23 & 0x80) {
  *signal_strength = 0;
 } else {
  reg23 = ~reg23 & 0x7f;

  *signal_strength = (reg23 << 9) | (reg23 << 2) | (reg23 >> 5);
 }

 return 0;
}
