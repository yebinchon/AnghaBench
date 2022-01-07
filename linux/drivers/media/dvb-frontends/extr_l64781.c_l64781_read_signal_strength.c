
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l64781_state {int dummy; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;


 int l64781_readreg (struct l64781_state*,int) ;

__attribute__((used)) static int l64781_read_signal_strength(struct dvb_frontend* fe, u16* signal_strength)
{
 struct l64781_state* state = fe->demodulator_priv;

 u8 gain = l64781_readreg (state, 0x0e);
 *signal_strength = (gain << 8) | gain;

 return 0;
}
