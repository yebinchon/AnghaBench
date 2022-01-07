
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jz4780_dma_dev {TYPE_1__* soc_data; } ;
struct TYPE_2__ {int flags; } ;


 int BIT (unsigned int) ;
 int JZ_DMA_REG_DCKEC ;
 int JZ_SOC_DATA_NO_DCKES_DCKEC ;
 int JZ_SOC_DATA_PER_CHAN_PM ;
 int jz4780_dma_ctrl_writel (struct jz4780_dma_dev*,int ,int ) ;

__attribute__((used)) static inline void jz4780_dma_chan_disable(struct jz4780_dma_dev *jzdma,
 unsigned int chn)
{
 if ((jzdma->soc_data->flags & JZ_SOC_DATA_PER_CHAN_PM) &&
   !(jzdma->soc_data->flags & JZ_SOC_DATA_NO_DCKES_DCKEC))
  jz4780_dma_ctrl_writel(jzdma, JZ_DMA_REG_DCKEC, BIT(chn));
}
