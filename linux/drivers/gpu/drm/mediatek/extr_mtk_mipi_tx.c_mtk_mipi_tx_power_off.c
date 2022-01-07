
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct mtk_mipi_tx {int pll; } ;


 int clk_disable_unprepare (int ) ;
 int mtk_mipi_tx_power_off_signal (struct phy*) ;
 struct mtk_mipi_tx* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mtk_mipi_tx_power_off(struct phy *phy)
{
 struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);


 mtk_mipi_tx_power_off_signal(phy);


 clk_disable_unprepare(mipi_tx->pll);

 return 0;
}
