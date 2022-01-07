
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int idx; } ;


 int XOR_INTR_MASK (struct mv_xor_chan*) ;
 int XOR_INTR_MASK_VALUE ;
 int readl_relaxed (int ) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static void mv_chan_unmask_interrupts(struct mv_xor_chan *chan)
{
 u32 val = readl_relaxed(XOR_INTR_MASK(chan));
 val |= XOR_INTR_MASK_VALUE << (chan->idx * 16);
 writel_relaxed(val, XOR_INTR_MASK(chan));
}
