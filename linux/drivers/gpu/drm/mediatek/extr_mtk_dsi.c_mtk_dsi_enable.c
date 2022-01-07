
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int dummy; } ;


 int DSI_CON_CTRL ;
 int DSI_EN ;
 int mtk_dsi_mask (struct mtk_dsi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dsi_enable(struct mtk_dsi *dsi)
{
 mtk_dsi_mask(dsi, DSI_CON_CTRL, DSI_EN, DSI_EN);
}
