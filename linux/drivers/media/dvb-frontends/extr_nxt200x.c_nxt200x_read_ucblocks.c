
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nxt200x_state {int dummy; } ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; } ;


 int nxt200x_readreg_multibyte (struct nxt200x_state*,int,int *,int) ;

__attribute__((used)) static int nxt200x_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct nxt200x_state* state = fe->demodulator_priv;
 u8 b[3];

 nxt200x_readreg_multibyte(state, 0xE6, b, 3);
 *ucblocks = b[2];

 return 0;
}
