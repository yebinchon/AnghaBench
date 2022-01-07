
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct cx22702_state* demodulator_priv; } ;
struct cx22702_state {int dummy; } ;


 int cx22702_readreg (struct cx22702_state*,int) ;

__attribute__((used)) static int cx22702_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct cx22702_state *state = fe->demodulator_priv;

 u16 rs_ber;
 if (cx22702_readreg(state, 0xE4) & 0x02) {

  rs_ber = (cx22702_readreg(state, 0xDE) & 0x7F) << 7
   | (cx22702_readreg(state, 0xDF) & 0x7F);
 } else {

  rs_ber = (cx22702_readreg(state, 0xDE) & 0x7F) << 8
   | cx22702_readreg(state, 0xDF);
 }
 *snr = ~rs_ber;

 return 0;
}
