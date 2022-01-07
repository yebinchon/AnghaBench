
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mt352_state {int dummy; } ;
struct dvb_frontend {struct mt352_state* demodulator_priv; } ;


 int SNR ;
 int mt352_read_register (struct mt352_state*,int ) ;

__attribute__((used)) static int mt352_read_snr(struct dvb_frontend* fe, u16* snr)
{
 struct mt352_state* state = fe->demodulator_priv;

 u8 _snr = mt352_read_register (state, SNR);
 *snr = (_snr << 8) | _snr;

 return 0;
}
