
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dispc_channel; } ;
struct dsi_data {scalar_t__ mode; int dss; TYPE_1__ output; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DSS_CLK_SRC_FCK ;
 scalar_t__ OMAP_DSS_DSI_CMD_MODE ;
 int dsi_framedone_irq_callback ;
 int dss_mgr_unregister_framedone_handler (TYPE_1__*,int ,struct dsi_data*) ;
 int dss_select_lcd_clk_source (int ,int,int ) ;

__attribute__((used)) static void dsi_display_uninit_dispc(struct dsi_data *dsi)
{
 enum omap_channel channel = dsi->output.dispc_channel;

 if (dsi->mode == OMAP_DSS_DSI_CMD_MODE)
  dss_mgr_unregister_framedone_handler(&dsi->output,
    dsi_framedone_irq_callback, dsi);

 dss_select_lcd_clk_source(dsi->dss, channel, DSS_CLK_SRC_FCK);
}
