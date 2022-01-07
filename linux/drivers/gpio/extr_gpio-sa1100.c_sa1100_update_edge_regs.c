
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa1100_gpio_chip {int irqrising; int irqmask; int irqfalling; void* membase; } ;


 int R_GFER ;
 int R_GRER ;
 int writel_relaxed (int,void*) ;

__attribute__((used)) static void sa1100_update_edge_regs(struct sa1100_gpio_chip *sgc)
{
 void *base = sgc->membase;
 u32 grer, gfer;

 grer = sgc->irqrising & sgc->irqmask;
 gfer = sgc->irqfalling & sgc->irqmask;

 writel_relaxed(grer, base + R_GRER);
 writel_relaxed(gfer, base + R_GFER);
}
