
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hsu_dma_chan {scalar_t__ reg; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 hsu_chan_readl(struct hsu_dma_chan *hsuc, int offset)
{
 return readl(hsuc->reg + offset);
}
