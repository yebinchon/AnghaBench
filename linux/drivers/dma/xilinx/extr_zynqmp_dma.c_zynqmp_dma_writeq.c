
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct zynqmp_dma_chan {scalar_t__ regs; } ;


 int lo_hi_writeq (int ,scalar_t__) ;

__attribute__((used)) static inline void zynqmp_dma_writeq(struct zynqmp_dma_chan *chan, u32 reg,
         u64 value)
{
 lo_hi_writeq(value, chan->regs + reg);
}
