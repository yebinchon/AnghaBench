
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dispc_channel; } ;
struct TYPE_6__ {int stallmode; int fifohandcheck; scalar_t__ lcden_sig_polarity; int video_port_width; int io_pad_mode; } ;
struct dsi_data {scalar_t__ module_id; scalar_t__ mode; int dss; TYPE_1__ output; TYPE_3__ mgr_config; int pix_fmt; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DSSERR (char*) ;
 int DSS_CLK_SRC_FCK ;
 int DSS_CLK_SRC_PLL1_1 ;
 int DSS_CLK_SRC_PLL2_1 ;
 int DSS_IO_PAD_MODE_BYPASS ;
 scalar_t__ OMAP_DSS_DSI_CMD_MODE ;
 int dsi_configure_dispc_clocks (struct dsi_data*) ;
 int dsi_framedone_irq_callback ;
 int dsi_get_pixel_size (int ) ;
 int dss_mgr_register_framedone_handler (TYPE_1__*,int ,struct dsi_data*) ;
 int dss_mgr_set_lcd_config (TYPE_1__*,TYPE_3__*) ;
 int dss_mgr_unregister_framedone_handler (TYPE_1__*,int ,struct dsi_data*) ;
 int dss_select_lcd_clk_source (int ,int,int ) ;

__attribute__((used)) static int dsi_display_init_dispc(struct dsi_data *dsi)
{
 enum omap_channel channel = dsi->output.dispc_channel;
 int r;

 dss_select_lcd_clk_source(dsi->dss, channel, dsi->module_id == 0 ?
   DSS_CLK_SRC_PLL1_1 :
   DSS_CLK_SRC_PLL2_1);

 if (dsi->mode == OMAP_DSS_DSI_CMD_MODE) {
  r = dss_mgr_register_framedone_handler(&dsi->output,
    dsi_framedone_irq_callback, dsi);
  if (r) {
   DSSERR("can't register FRAMEDONE handler\n");
   goto err;
  }

  dsi->mgr_config.stallmode = 1;
  dsi->mgr_config.fifohandcheck = 1;
 } else {
  dsi->mgr_config.stallmode = 0;
  dsi->mgr_config.fifohandcheck = 0;
 }

 r = dsi_configure_dispc_clocks(dsi);
 if (r)
  goto err1;

 dsi->mgr_config.io_pad_mode = DSS_IO_PAD_MODE_BYPASS;
 dsi->mgr_config.video_port_width =
   dsi_get_pixel_size(dsi->pix_fmt);
 dsi->mgr_config.lcden_sig_polarity = 0;

 dss_mgr_set_lcd_config(&dsi->output, &dsi->mgr_config);

 return 0;
err1:
 if (dsi->mode == OMAP_DSS_DSI_CMD_MODE)
  dss_mgr_unregister_framedone_handler(&dsi->output,
    dsi_framedone_irq_callback, dsi);
err:
 dss_select_lcd_clk_source(dsi->dss, channel, DSS_CLK_SRC_FCK);
 return r;
}
