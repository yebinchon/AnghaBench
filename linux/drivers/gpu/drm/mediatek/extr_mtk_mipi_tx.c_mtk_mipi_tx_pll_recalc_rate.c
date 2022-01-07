
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mipi_tx {unsigned long data_rate; } ;
struct clk_hw {int dummy; } ;


 struct mtk_mipi_tx* mtk_mipi_tx_from_clk_hw (struct clk_hw*) ;

__attribute__((used)) static unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);

 return mipi_tx->data_rate;
}
