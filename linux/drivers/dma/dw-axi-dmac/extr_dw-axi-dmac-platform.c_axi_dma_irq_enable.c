
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axi_dma_chip {int dummy; } ;


 int DMAC_CFG ;
 int INT_EN_MASK ;
 int axi_dma_ioread32 (struct axi_dma_chip*,int ) ;
 int axi_dma_iowrite32 (struct axi_dma_chip*,int ,int ) ;

__attribute__((used)) static inline void axi_dma_irq_enable(struct axi_dma_chip *chip)
{
 u32 val;

 val = axi_dma_ioread32(chip, DMAC_CFG);
 val |= INT_EN_MASK;
 axi_dma_iowrite32(chip, DMAC_CFG, val);
}
