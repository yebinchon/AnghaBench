
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {scalar_t__ regs; } ;


 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void rdma_update_bits(struct mtk_ddp_comp *comp, unsigned int reg,
        unsigned int mask, unsigned int val)
{
 unsigned int tmp = readl(comp->regs + reg);

 tmp = (tmp & ~mask) | (val & mask);
 writel(tmp, comp->regs + reg);
}
