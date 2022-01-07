
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {scalar_t__ regs; } ;


 scalar_t__ DSI_START ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_dsi_start(struct mtk_dsi *dsi)
{
 writel(0, dsi->regs + DSI_START);
 writel(1, dsi->regs + DSI_START);
}
