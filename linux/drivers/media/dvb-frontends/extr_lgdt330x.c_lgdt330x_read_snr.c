
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lgdt330x_state {int snr; } ;
struct dvb_frontend {struct lgdt330x_state* demodulator_priv; } ;



__attribute__((used)) static int lgdt330x_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct lgdt330x_state *state = fe->demodulator_priv;

 *snr = (state->snr) >> 16;

 return 0;
}
