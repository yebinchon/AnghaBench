
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mtk_cec {scalar_t__ regs; } ;


 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mtk_cec_mask(struct mtk_cec *cec, unsigned int offset,
    unsigned int val, unsigned int mask)
{
 u32 tmp = readl(cec->regs + offset) & ~mask;

 tmp |= val & mask;
 writel(val, cec->regs + offset);
}
