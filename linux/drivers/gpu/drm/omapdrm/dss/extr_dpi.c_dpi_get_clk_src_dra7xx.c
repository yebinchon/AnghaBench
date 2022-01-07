
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpi_data {int dss; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;


 int DSS_CLK_SRC_FCK ;
 int DSS_CLK_SRC_PLL1_1 ;
 int DSS_CLK_SRC_PLL1_3 ;
 int DSS_CLK_SRC_PLL2_1 ;
 int DSS_CLK_SRC_PLL2_3 ;



 int dss_pll_find_by_src (int ,int) ;

__attribute__((used)) static enum dss_clk_source dpi_get_clk_src_dra7xx(struct dpi_data *dpi,
        enum omap_channel channel)
{







 switch (channel) {
 case 130:
 {
  if (dss_pll_find_by_src(dpi->dss, DSS_CLK_SRC_PLL1_1))
   return DSS_CLK_SRC_PLL1_1;
  break;
 }
 case 129:
 {
  if (dss_pll_find_by_src(dpi->dss, DSS_CLK_SRC_PLL1_3))
   return DSS_CLK_SRC_PLL1_3;
  if (dss_pll_find_by_src(dpi->dss, DSS_CLK_SRC_PLL2_3))
   return DSS_CLK_SRC_PLL2_3;
  break;
 }
 case 128:
 {
  if (dss_pll_find_by_src(dpi->dss, DSS_CLK_SRC_PLL2_1))
   return DSS_CLK_SRC_PLL2_1;
  if (dss_pll_find_by_src(dpi->dss, DSS_CLK_SRC_PLL1_3))
   return DSS_CLK_SRC_PLL1_3;
  break;
 }
 default:
  break;
 }

 return DSS_CLK_SRC_FCK;
}
