
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct cx22700_state* demodulator_priv; } ;
struct cx22700_state {int dummy; } ;


 int cx22700_readreg (struct cx22700_state*,int) ;
 int cx22700_writereg (struct cx22700_state*,int,int) ;

__attribute__((used)) static int cx22700_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct cx22700_state* state = fe->demodulator_priv;

 *ucblocks = cx22700_readreg (state, 0x0f);
 cx22700_writereg (state, 0x0f, 0x00);

 return 0;
}
