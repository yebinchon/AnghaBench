
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cx24113_state {int dummy; } ;
typedef int s32 ;


 int cx24113_readreg (struct cx24113_state*,int) ;
 int cx24113_set_Fref (struct cx24113_state*,int) ;
 int cx24113_writereg (struct cx24113_state*,int,int) ;

__attribute__((used)) static void cx24113_set_nfr(struct cx24113_state *state, u16 n, s32 f, u8 r)
{
 u8 reg;
 cx24113_writereg(state, 0x19, (n >> 1) & 0xff);

 reg = ((n & 0x1) << 7) | ((f >> 11) & 0x7f);
 cx24113_writereg(state, 0x1a, reg);

 cx24113_writereg(state, 0x1b, (f >> 3) & 0xff);

 reg = cx24113_readreg(state, 0x1c) & 0x1f;
 cx24113_writereg(state, 0x1c, reg | ((f & 0x7) << 5));

 cx24113_set_Fref(state, r - 1);
}
