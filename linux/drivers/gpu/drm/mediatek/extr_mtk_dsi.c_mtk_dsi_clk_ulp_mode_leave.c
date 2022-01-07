
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int dummy; } ;


 int DSI_PHY_LCCON ;
 int LC_ULPM_EN ;
 int LC_WAKEUP_EN ;
 int mtk_dsi_mask (struct mtk_dsi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dsi_clk_ulp_mode_leave(struct mtk_dsi *dsi)
{
 mtk_dsi_mask(dsi, DSI_PHY_LCCON, LC_ULPM_EN, 0);
 mtk_dsi_mask(dsi, DSI_PHY_LCCON, LC_WAKEUP_EN, LC_WAKEUP_EN);
 mtk_dsi_mask(dsi, DSI_PHY_LCCON, LC_WAKEUP_EN, 0);
}
