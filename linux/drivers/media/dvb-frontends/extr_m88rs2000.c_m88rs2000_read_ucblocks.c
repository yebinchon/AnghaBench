
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;


 int m88rs2000_readreg (struct m88rs2000_state*,int) ;
 int m88rs2000_writereg (struct m88rs2000_state*,int,int) ;

__attribute__((used)) static int m88rs2000_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct m88rs2000_state *state = fe->demodulator_priv;
 u8 tmp;

 *ucblocks = (m88rs2000_readreg(state, 0xd5) << 8) |
   m88rs2000_readreg(state, 0xd4);
 tmp = m88rs2000_readreg(state, 0xd8);
 m88rs2000_writereg(state, 0xd8, tmp & ~0x20);

 m88rs2000_writereg(state, 0xd8, tmp | 0x20);
 m88rs2000_writereg(state, 0xd8, tmp | 0x20);

 return 0;
}
