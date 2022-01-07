
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dma_chan_reg {int dummy; } ;


 int memset (struct stm32_dma_chan_reg*,int ,int) ;

__attribute__((used)) static void stm32_dma_clear_reg(struct stm32_dma_chan_reg *regs)
{
 memset(regs, 0, sizeof(struct stm32_dma_chan_reg));
}
