
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;


 int OFDM_CHC_SNR ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;

__attribute__((used)) static int nxt6000_read_snr(struct dvb_frontend* fe, u16* snr)
{
 struct nxt6000_state* state = fe->demodulator_priv;

 *snr = nxt6000_readreg( state, OFDM_CHC_SNR) / 8;

 return 0;
}
