
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;


 int cx24110_readreg (struct cx24110_state*,int) ;

__attribute__((used)) static int cx24110_read_signal_strength(struct dvb_frontend* fe, u16* signal_strength)
{
 struct cx24110_state *state = fe->demodulator_priv;


 u8 signal = cx24110_readreg (state, 0x27)+128;
 *signal_strength = (signal << 8) | signal;

 return 0;
}
