
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;


 int cx24123_readreg (struct cx24123_state*,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int cx24123_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct cx24123_state *state = fe->demodulator_priv;



 *ber = ((cx24123_readreg(state, 0x1c) & 0x3f) << 16) |
  (cx24123_readreg(state, 0x1d) << 8 |
   cx24123_readreg(state, 0x1e));

 dprintk("BER = %d\n", *ber);

 return 0;
}
