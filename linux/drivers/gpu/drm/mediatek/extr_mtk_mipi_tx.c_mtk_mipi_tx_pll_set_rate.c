
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mipi_tx {unsigned long data_rate; int dev; } ;
struct clk_hw {int dummy; } ;


 int dev_dbg (int ,char*,unsigned long) ;
 struct mtk_mipi_tx* mtk_mipi_tx_from_clk_hw (struct clk_hw*) ;

__attribute__((used)) static int mtk_mipi_tx_pll_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);

 dev_dbg(mipi_tx->dev, "set rate: %lu Hz\n", rate);

 mipi_tx->data_rate = rate;

 return 0;
}
