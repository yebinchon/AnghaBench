
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int dummy; } ;


 int DSI_PHY_LD0CON ;
 int LD0_ULPM_EN ;
 int LD0_WAKEUP_EN ;
 int mtk_dsi_mask (struct mtk_dsi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dsi_lane0_ulp_mode_leave(struct mtk_dsi *dsi)
{
 mtk_dsi_mask(dsi, DSI_PHY_LD0CON, LD0_ULPM_EN, 0);
 mtk_dsi_mask(dsi, DSI_PHY_LD0CON, LD0_WAKEUP_EN, LD0_WAKEUP_EN);
 mtk_dsi_mask(dsi, DSI_PHY_LD0CON, LD0_WAKEUP_EN, 0);
}
