
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dss_device {int* lcd_clk_source; TYPE_2__* feat; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;
struct TYPE_4__ {TYPE_1__* ops; int has_lcd_clk_src; } ;
struct TYPE_3__ {int (* select_lcd_source ) (struct dss_device*,int,int) ;} ;


 int dss_get_channel_index (int) ;
 int dss_select_dispc_clk_source (struct dss_device*,int) ;
 int stub1 (struct dss_device*,int,int) ;

void dss_select_lcd_clk_source(struct dss_device *dss,
          enum omap_channel channel,
          enum dss_clk_source clk_src)
{
 int idx = dss_get_channel_index(channel);
 int r;

 if (!dss->feat->has_lcd_clk_src) {
  dss_select_dispc_clk_source(dss, clk_src);
  dss->lcd_clk_source[idx] = clk_src;
  return;
 }

 r = dss->feat->ops->select_lcd_source(dss, channel, clk_src);
 if (r)
  return;

 dss->lcd_clk_source[idx] = clk_src;
}
