
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct mtk_mipi_tx {int pll; } ;


 int clk_prepare_enable (int ) ;
 int mtk_mipi_tx_power_on_signal (struct phy*) ;
 struct mtk_mipi_tx* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mtk_mipi_tx_power_on(struct phy *phy)
{
 struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
 int ret;


 ret = clk_prepare_enable(mipi_tx->pll);
 if (ret < 0)
  return ret;


 mtk_mipi_tx_power_on_signal(phy);

 return 0;
}
