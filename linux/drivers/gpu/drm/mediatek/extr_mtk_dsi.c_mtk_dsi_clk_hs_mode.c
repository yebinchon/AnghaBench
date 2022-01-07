
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int dummy; } ;


 int DSI_PHY_LCCON ;
 int LC_HS_TX_EN ;
 scalar_t__ mtk_dsi_clk_hs_state (struct mtk_dsi*) ;
 int mtk_dsi_mask (struct mtk_dsi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dsi_clk_hs_mode(struct mtk_dsi *dsi, bool enter)
{
 if (enter && !mtk_dsi_clk_hs_state(dsi))
  mtk_dsi_mask(dsi, DSI_PHY_LCCON, LC_HS_TX_EN, LC_HS_TX_EN);
 else if (!enter && mtk_dsi_clk_hs_state(dsi))
  mtk_dsi_mask(dsi, DSI_PHY_LCCON, LC_HS_TX_EN, 0);
}
