
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct phy {int dummy; } ;
struct mtk_mipi_tx {int dummy; } ;


 scalar_t__ MIPITX_DSI_CLOCK_LANE ;
 scalar_t__ MIPITX_DSI_DATA_LANE3 ;
 int MIPITX_DSI_TOP_CON ;
 int RG_DSI_LNTx_LDOOUT_EN ;
 int RG_DSI_PAD_TIE_LOW_EN ;
 int mtk_mipi_tx_clear_bits (struct mtk_mipi_tx*,scalar_t__,int ) ;
 int mtk_mipi_tx_set_bits (struct mtk_mipi_tx*,int ,int ) ;
 struct mtk_mipi_tx* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static void mtk_mipi_tx_power_off_signal(struct phy *phy)
{
 struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
 u32 reg;

 mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_TOP_CON,
        RG_DSI_PAD_TIE_LOW_EN);

 for (reg = MIPITX_DSI_CLOCK_LANE;
      reg <= MIPITX_DSI_DATA_LANE3; reg += 4)
  mtk_mipi_tx_clear_bits(mipi_tx, reg, RG_DSI_LNTx_LDOOUT_EN);
}
