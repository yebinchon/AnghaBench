
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dpi {int regs; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void mtk_dpi_mask(struct mtk_dpi *dpi, u32 offset, u32 val, u32 mask)
{
 u32 tmp = readl(dpi->regs + offset) & ~mask;

 tmp |= (val & mask);
 writel(tmp, dpi->regs + offset);
}
