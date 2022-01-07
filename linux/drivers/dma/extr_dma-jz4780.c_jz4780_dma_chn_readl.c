
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_dma_dev {scalar_t__ chn_base; } ;


 scalar_t__ JZ_DMA_REG_CHAN (unsigned int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t jz4780_dma_chn_readl(struct jz4780_dma_dev *jzdma,
 unsigned int chn, unsigned int reg)
{
 return readl(jzdma->chn_base + reg + JZ_DMA_REG_CHAN(chn));
}
