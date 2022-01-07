
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {scalar_t__ regs; } ;


 int BIT (int) ;
 scalar_t__ SDMA_H_START ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sdma_enable_channel(struct sdma_engine *sdma, int channel)
{
 writel(BIT(channel), sdma->regs + SDMA_H_START);
}
