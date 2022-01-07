
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dsi_data {scalar_t__ mode; TYPE_1__* data; int pix_fmt; } ;
struct TYPE_2__ {int quirks; } ;


 int BUG () ;
 int DSI_CTRL ;
 int DSI_FIFO_SIZE_32 ;
 int DSI_QUIRK_DCS_CMD_CONFIG_VC ;
 int EINVAL ;
 int FLD_MOD (int ,int,int,int) ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int dsi_config_blanking_modes (struct dsi_data*) ;
 int dsi_config_cmd_mode_interleaving (struct dsi_data*) ;
 int dsi_config_rx_fifo (struct dsi_data*,int ,int ,int ,int ) ;
 int dsi_config_tx_fifo (struct dsi_data*,int ,int ,int ,int ) ;
 int dsi_config_vp_num_line_buffers (struct dsi_data*) ;
 int dsi_config_vp_sync_events (struct dsi_data*) ;
 int dsi_get_pixel_size (int ) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_set_hs_tx_timeout (struct dsi_data*,int,int,int) ;
 int dsi_set_lp_rx_timeout (struct dsi_data*,int,int,int) ;
 int dsi_set_stop_state_counter (struct dsi_data*,int,int,int) ;
 int dsi_set_ta_timeout (struct dsi_data*,int,int,int) ;
 int dsi_vc_initial_config (struct dsi_data*,int) ;
 int dsi_write_reg (struct dsi_data*,int ,int ) ;

__attribute__((used)) static int dsi_proto_config(struct dsi_data *dsi)
{
 u32 r;
 int buswidth = 0;

 dsi_config_tx_fifo(dsi, DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32);

 dsi_config_rx_fifo(dsi, DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32);


 dsi_set_stop_state_counter(dsi, 0x1000, 0, 0);
 dsi_set_ta_timeout(dsi, 0x1fff, 1, 1);
 dsi_set_lp_rx_timeout(dsi, 0x1fff, 1, 1);
 dsi_set_hs_tx_timeout(dsi, 0x1fff, 1, 1);

 switch (dsi_get_pixel_size(dsi->pix_fmt)) {
 case 16:
  buswidth = 0;
  break;
 case 18:
  buswidth = 1;
  break;
 case 24:
  buswidth = 2;
  break;
 default:
  BUG();
  return -EINVAL;
 }

 r = dsi_read_reg(dsi, DSI_CTRL);
 r = FLD_MOD(r, 1, 1, 1);
 r = FLD_MOD(r, 1, 2, 2);
 r = FLD_MOD(r, 1, 3, 3);
 r = FLD_MOD(r, 1, 4, 4);
 r = FLD_MOD(r, buswidth, 7, 6);
 r = FLD_MOD(r, 0, 8, 8);
 r = FLD_MOD(r, 1, 14, 14);
 r = FLD_MOD(r, 1, 19, 19);
 if (!(dsi->data->quirks & DSI_QUIRK_DCS_CMD_CONFIG_VC)) {
  r = FLD_MOD(r, 1, 24, 24);

  r = FLD_MOD(r, 0, 25, 25);
 }

 dsi_write_reg(dsi, DSI_CTRL, r);

 dsi_config_vp_num_line_buffers(dsi);

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  dsi_config_vp_sync_events(dsi);
  dsi_config_blanking_modes(dsi);
  dsi_config_cmd_mode_interleaving(dsi);
 }

 dsi_vc_initial_config(dsi, 0);
 dsi_vc_initial_config(dsi, 1);
 dsi_vc_initial_config(dsi, 2);
 dsi_vc_initial_config(dsi, 3);

 return 0;
}
