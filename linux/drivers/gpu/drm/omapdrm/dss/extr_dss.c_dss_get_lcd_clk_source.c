
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_device {int* lcd_clk_source; int dispc_clk_source; TYPE_1__* feat; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;
struct TYPE_2__ {scalar_t__ has_lcd_clk_src; } ;


 int dss_get_channel_index (int) ;

enum dss_clk_source dss_get_lcd_clk_source(struct dss_device *dss,
        enum omap_channel channel)
{
 if (dss->feat->has_lcd_clk_src) {
  int idx = dss_get_channel_index(channel);
  return dss->lcd_clk_source[idx];
 } else {


  return dss->dispc_clk_source;
 }
}
