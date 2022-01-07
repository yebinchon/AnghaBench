
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lgdt3306a_state {int snr; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;


 int lgdt3306a_calculate_snr_x100 (struct lgdt3306a_state*) ;

__attribute__((used)) static int lgdt3306a_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct lgdt3306a_state *state = fe->demodulator_priv;

 state->snr = lgdt3306a_calculate_snr_x100(state);

 *snr = state->snr/10;

 return 0;
}
