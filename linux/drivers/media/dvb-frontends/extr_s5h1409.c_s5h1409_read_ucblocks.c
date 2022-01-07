
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5h1409_state {int dummy; } ;
struct dvb_frontend {struct s5h1409_state* demodulator_priv; } ;


 int s5h1409_readreg (struct s5h1409_state*,int) ;

__attribute__((used)) static int s5h1409_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct s5h1409_state *state = fe->demodulator_priv;

 *ucblocks = s5h1409_readreg(state, 0xb5);

 return 0;
}
