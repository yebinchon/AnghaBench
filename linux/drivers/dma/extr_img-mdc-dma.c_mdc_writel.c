
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mdc_dma {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mdc_writel(struct mdc_dma *mdma, u32 val, u32 reg)
{
 writel(val, mdma->regs + reg);
}
