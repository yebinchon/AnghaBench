
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;


 int m88rs2000_readreg (struct m88rs2000_state*,int) ;

__attribute__((used)) static int m88rs2000_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct m88rs2000_state *state = fe->demodulator_priv;

 *snr = 512 * m88rs2000_readreg(state, 0x65);

 return 0;
}
