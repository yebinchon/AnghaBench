
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;


 int mdelay (int) ;
 int s5h1420_readreg (struct s5h1420_state*,int) ;
 int s5h1420_writereg (struct s5h1420_state*,int,int) ;

__attribute__((used)) static int s5h1420_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct s5h1420_state* state = fe->demodulator_priv;

 s5h1420_writereg(state, 0x46, 0x1f);
 mdelay(25);

 *ucblocks = (s5h1420_readreg(state, 0x48) << 8) | s5h1420_readreg(state, 0x47);

 return 0;
}
