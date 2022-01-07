
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx24113_state {int dummy; } ;


 int cx24113_readreg (struct cx24113_state*,int) ;
 int cx24113_writereg (struct cx24113_state*,int,int) ;

__attribute__((used)) static int cx24113_set_clk_inversion(struct cx24113_state *state, u8 on)
{
 u8 r = (cx24113_readreg(state, 0x10) & 0x7f) | ((on & 0x1) << 7);
 return cx24113_writereg(state, 0x10, r);
}
