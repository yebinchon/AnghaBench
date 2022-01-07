
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;


 int VIT_BER_0 ;
 int VIT_BER_1 ;
 int VIT_COR_INTSTAT ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static int nxt6000_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct nxt6000_state* state = fe->demodulator_priv;

 nxt6000_writereg( state, VIT_COR_INTSTAT, 0x18 );

 *ber = (nxt6000_readreg( state, VIT_BER_1 ) << 8 ) |
  nxt6000_readreg( state, VIT_BER_0 );

 nxt6000_writereg( state, VIT_COR_INTSTAT, 0x18);

 return 0;
}
