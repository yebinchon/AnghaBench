
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct axi_dma_chip {scalar_t__ regs; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 axi_dma_ioread32(struct axi_dma_chip *chip, u32 reg)
{
 return ioread32(chip->regs + reg);
}
