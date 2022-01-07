
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt352_state {int dummy; } ;
struct dvb_frontend {struct mt352_state* demodulator_priv; } ;


 int AGC_GAIN_0 ;
 int AGC_GAIN_1 ;
 int mt352_read_register (struct mt352_state*,int ) ;

__attribute__((used)) static int mt352_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{
 struct mt352_state* state = fe->demodulator_priv;


 u16 signal = ((mt352_read_register(state, AGC_GAIN_1) & 0x0f) << 12) |
  (mt352_read_register(state, AGC_GAIN_0) << 4);


 *strength = ~signal;
 return 0;
}
