
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int dummy; } ;


 int XOR_ACTIVATION (struct mv_xor_chan*) ;
 int readl_relaxed (int ) ;

__attribute__((used)) static char mv_chan_is_busy(struct mv_xor_chan *chan)
{
 u32 state = readl_relaxed(XOR_ACTIVATION(chan));

 state = (state >> 4) & 0x3;

 return (state == 1) ? 1 : 0;
}
