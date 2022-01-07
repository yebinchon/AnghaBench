
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sp887x_state {int dummy; } ;
struct dvb_frontend {struct sp887x_state* demodulator_priv; } ;


 int sp887x_readreg (struct sp887x_state*,int) ;

__attribute__((used)) static int sp887x_read_snr(struct dvb_frontend* fe, u16* snr)
{
 struct sp887x_state* state = fe->demodulator_priv;

 u16 snr12 = sp887x_readreg(state, 0xf16);
 *snr = (snr12 << 4) | (snr12 >> 8);

 return 0;
}
