
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stb6100_state {int bandwidth; } ;
struct dvb_frontend {struct stb6100_state* tuner_priv; } ;


 int FE_DEBUG ;
 int STB6100_F ;
 int STB6100_F_F ;
 int dprintk (int ,int ,int,char*,int) ;
 int stb6100_read_reg (struct stb6100_state*,int ) ;
 int verbose ;

__attribute__((used)) static int stb6100_get_bandwidth(struct dvb_frontend *fe, u32 *bandwidth)
{
 int rc;
 u8 f;
 u32 bw;
 struct stb6100_state *state = fe->tuner_priv;

 rc = stb6100_read_reg(state, STB6100_F);
 if (rc < 0)
  return rc;
 f = rc & STB6100_F_F;

 bw = (f + 5) * 2000;

 *bandwidth = state->bandwidth = bw * 1000;
 dprintk(verbose, FE_DEBUG, 1, "bandwidth = %u Hz", state->bandwidth);
 return 0;
}
