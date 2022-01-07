
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int* dsi_clk_source; } ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;



enum dss_clk_source dss_get_dsi_clk_source(struct dss_device *dss,
        int dsi_module)
{
 return dss->dsi_clk_source[dsi_module];
}
