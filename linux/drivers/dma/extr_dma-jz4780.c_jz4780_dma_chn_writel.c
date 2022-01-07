
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_dma_dev {scalar_t__ chn_base; } ;


 scalar_t__ JZ_DMA_REG_CHAN (unsigned int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void jz4780_dma_chn_writel(struct jz4780_dma_dev *jzdma,
 unsigned int chn, unsigned int reg, uint32_t val)
{
 writel(val, jzdma->chn_base + reg + JZ_DMA_REG_CHAN(chn));
}
