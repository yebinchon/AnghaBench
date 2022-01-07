
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct axi_dma_chip {scalar_t__ regs; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
axi_dma_iowrite32(struct axi_dma_chip *chip, u32 reg, u32 val)
{
 iowrite32(val, chip->regs + reg);
}
