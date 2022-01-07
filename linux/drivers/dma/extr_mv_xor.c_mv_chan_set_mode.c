
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int dummy; } ;


 int XOR_CONFIG (struct mv_xor_chan*) ;
 int XOR_DESCRIPTOR_SWAP ;
 int readl_relaxed (int ) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static void mv_chan_set_mode(struct mv_xor_chan *chan,
        u32 op_mode)
{
 u32 config = readl_relaxed(XOR_CONFIG(chan));

 config &= ~0x7;
 config |= op_mode;




 config &= ~XOR_DESCRIPTOR_SWAP;


 writel_relaxed(config, XOR_CONFIG(chan));
}
