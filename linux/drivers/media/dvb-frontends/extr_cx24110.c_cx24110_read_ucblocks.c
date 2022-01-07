
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int lastbler; } ;


 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;

__attribute__((used)) static int cx24110_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct cx24110_state *state = fe->demodulator_priv;

 if(cx24110_readreg(state,0x10)&0x40) {

  cx24110_writereg(state,0x10,0x60);
  (void)(cx24110_readreg(state, 0x12) |
   (cx24110_readreg(state, 0x13) << 8) |
   (cx24110_readreg(state, 0x14) << 16));
  cx24110_writereg(state,0x10,0x70);
  state->lastbler=cx24110_readreg(state,0x12)|
   (cx24110_readreg(state,0x13)<<8)|
   (cx24110_readreg(state,0x14)<<16);
  cx24110_writereg(state,0x10,0x20);
 }
 *ucblocks = state->lastbler;

 return 0;
}
