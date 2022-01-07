
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_frontend {struct cx24113_state* tuner_priv; } ;
struct cx24113_state {int dummy; } ;


 int TUNER_STATUS_LOCKED ;
 int cx24113_readreg (struct cx24113_state*,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int cx24113_get_status(struct dvb_frontend *fe, u32 *status)
{
 struct cx24113_state *state = fe->tuner_priv;
 u8 r = (cx24113_readreg(state, 0x10) & 0x02) >> 1;
 if (r)
  *status |= TUNER_STATUS_LOCKED;
 dprintk("PLL locked: %d\n", r);
 return 0;
}
