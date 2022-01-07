
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sp887x_state {int dummy; } ;
struct dvb_frontend {struct sp887x_state* demodulator_priv; } ;


 int sp887x_readreg (struct sp887x_state*,int) ;

__attribute__((used)) static int sp887x_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct sp887x_state* state = fe->demodulator_priv;

 *ucblocks = sp887x_readreg(state, 0xc0c);
 if (*ucblocks == 0xfff)
  *ucblocks = ~0;

 return 0;
}
