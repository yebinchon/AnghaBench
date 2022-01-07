
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {scalar_t__ regs; } ;


 int CMD_MODE ;
 scalar_t__ DSI_MODE_CTRL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_dsi_set_cmd_mode(struct mtk_dsi *dsi)
{
 writel(CMD_MODE, dsi->regs + DSI_MODE_CTRL);
}
