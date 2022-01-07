
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dispc_channel; } ;
struct dpi_data {int dss_model; TYPE_1__ output; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;


 int DSS_CLK_SRC_FCK ;
 int DSS_CLK_SRC_PLL1_1 ;
 int DSS_CLK_SRC_PLL2_1 ;
 int dpi_get_clk_src_dra7xx (struct dpi_data*,int) ;

__attribute__((used)) static enum dss_clk_source dpi_get_clk_src(struct dpi_data *dpi)
{
 enum omap_channel channel = dpi->output.dispc_channel;






 switch (dpi->dss_model) {
 case 134:
 case 133:
  return DSS_CLK_SRC_FCK;

 case 132:
  switch (channel) {
  case 130:
   return DSS_CLK_SRC_PLL1_1;
  case 129:
   return DSS_CLK_SRC_PLL2_1;
  default:
   return DSS_CLK_SRC_FCK;
  }

 case 131:
  switch (channel) {
  case 130:
   return DSS_CLK_SRC_PLL1_1;
  case 128:
   return DSS_CLK_SRC_PLL2_1;
  case 129:
  default:
   return DSS_CLK_SRC_FCK;
  }

 case 135:
  return dpi_get_clk_src_dra7xx(dpi, channel);

 default:
  return DSS_CLK_SRC_FCK;
 }
}
