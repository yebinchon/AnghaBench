
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hsu_dma_chan {scalar_t__ reg; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hsu_chan_writel(struct hsu_dma_chan *hsuc, int offset,
       u32 value)
{
 writel(value, hsuc->reg + offset);
}
