
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dsi {int regs; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void mtk_dsi_mask(struct mtk_dsi *dsi, u32 offset, u32 mask, u32 data)
{
 u32 temp = readl(dsi->regs + offset);

 writel((temp & ~mask) | (data & mask), dsi->regs + offset);
}
