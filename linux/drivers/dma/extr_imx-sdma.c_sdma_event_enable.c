
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdma_engine {scalar_t__ regs; } ;
struct sdma_channel {int channel; struct sdma_engine* sdma; } ;


 int __set_bit (int,unsigned long*) ;
 scalar_t__ chnenbl_ofs (struct sdma_engine*,unsigned int) ;
 unsigned long readl_relaxed (scalar_t__) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static void sdma_event_enable(struct sdma_channel *sdmac, unsigned int event)
{
 struct sdma_engine *sdma = sdmac->sdma;
 int channel = sdmac->channel;
 unsigned long val;
 u32 chnenbl = chnenbl_ofs(sdma, event);

 val = readl_relaxed(sdma->regs + chnenbl);
 __set_bit(channel, &val);
 writel_relaxed(val, sdma->regs + chnenbl);
}
