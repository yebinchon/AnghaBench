
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mipi_tx {int dev; } ;
struct clk_hw {int dummy; } ;


 int MIPITX_DSI_BG_CON ;
 int MIPITX_DSI_CON ;
 int MIPITX_DSI_PLL_CON0 ;
 int MIPITX_DSI_PLL_PWR ;
 int MIPITX_DSI_PLL_TOP ;
 int MIPITX_DSI_TOP_CON ;
 int RG_DSI_BG_CKEN ;
 int RG_DSI_BG_CORE_EN ;
 int RG_DSI_CKG_LDOOUT_EN ;
 int RG_DSI_LDOCORE_EN ;
 int RG_DSI_LNT_HS_BIAS_EN ;
 int RG_DSI_MPPLL_DIV_MSK ;
 int RG_DSI_MPPLL_PLL_EN ;
 int RG_DSI_MPPLL_PRESERVE ;
 int RG_DSI_MPPLL_SDM_ISO_EN ;
 int RG_DSI_MPPLL_SDM_PWR_ON ;
 int dev_dbg (int ,char*) ;
 int mtk_mipi_tx_clear_bits (struct mtk_mipi_tx*,int ,int) ;
 struct mtk_mipi_tx* mtk_mipi_tx_from_clk_hw (struct clk_hw*) ;
 int mtk_mipi_tx_update_bits (struct mtk_mipi_tx*,int ,int,int) ;

__attribute__((used)) static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
{
 struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);

 dev_dbg(mipi_tx->dev, "unprepare\n");

 mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
          RG_DSI_MPPLL_PLL_EN);

 mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_TOP,
    RG_DSI_MPPLL_PRESERVE, 0);

 mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_PWR,
    RG_DSI_MPPLL_SDM_ISO_EN |
    RG_DSI_MPPLL_SDM_PWR_ON,
    RG_DSI_MPPLL_SDM_ISO_EN);

 mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_TOP_CON,
          RG_DSI_LNT_HS_BIAS_EN);

 mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_CON,
          RG_DSI_CKG_LDOOUT_EN | RG_DSI_LDOCORE_EN);

 mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_BG_CON,
          RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN);

 mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
          RG_DSI_MPPLL_DIV_MSK);
}
