
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dsi {scalar_t__ regs; } ;


 scalar_t__ DSI_PHY_LCCON ;
 int LC_HS_TX_EN ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool mtk_dsi_clk_hs_state(struct mtk_dsi *dsi)
{
 u32 tmp_reg1;

 tmp_reg1 = readl(dsi->regs + DSI_PHY_LCCON);
 return ((tmp_reg1 & LC_HS_TX_EN) == 1) ? 1 : 0;
}
