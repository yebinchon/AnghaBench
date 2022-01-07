
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_offset {int status; int surf; int linoff; int conf; int cntr; int dpll; } ;
struct mdfld_dsi_pkg_sender {int pipe; int lock; int mipi_cmd_len_reg; int mipi_cmd_addr_reg; int mipi_data_len_reg; int mipi_data_addr_reg; int mipi_gen_fifo_stat_reg; int mipi_hs_gen_ctrl_reg; int mipi_lp_gen_ctrl_reg; int mipi_hs_gen_data_reg; int mipi_lp_gen_data_reg; int mipi_intr_stat_reg; int pipestat_reg; int dspsurf_reg; int dsplinoff_reg; int pipeconf_reg; int dspcntr_reg; int dpll_reg; int status; scalar_t__ panel_mode; scalar_t__ pkg_num; struct mdfld_dsi_connector* dsi_connector; struct drm_device* dev; } ;
struct mdfld_dsi_connector {struct mdfld_dsi_pkg_sender* pkg_sender; } ;
struct mdfld_dsi_config {struct drm_device* dev; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mdfld_dsi_pkg_sender*) ;
 int MDFLD_DSI_PKG_SENDER_FREE ;
 int MIPI_CMD_ADD_REG (int) ;
 int MIPI_CMD_LEN_REG (int) ;
 int MIPI_DATA_ADD_REG (int) ;
 int MIPI_DATA_LEN_REG (int) ;
 int MIPI_GEN_FIFO_STAT_REG (int) ;
 int MIPI_HS_GEN_CTRL_REG (int) ;
 int MIPI_HS_GEN_DATA_REG (int) ;
 int MIPI_INTR_STAT_REG (int) ;
 int MIPI_LP_GEN_CTRL_REG (int) ;
 int MIPI_LP_GEN_DATA_REG (int) ;
 int MIPI_PORT_CONTROL (int) ;
 int PASS_FROM_SPHY_TO_AFE ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int SEL_FLOPPED_HSTX ;
 scalar_t__ TC35876X ;
 struct mdfld_dsi_pkg_sender* kzalloc (int,int ) ;
 int mdfld_dsi_controller_init (struct mdfld_dsi_config*,int) ;
 struct mdfld_dsi_config* mdfld_dsi_get_config (struct mdfld_dsi_connector*) ;
 scalar_t__ mdfld_get_panel_type (struct drm_device*,int) ;
 int spin_lock_init (int *) ;

int mdfld_dsi_pkg_sender_init(struct mdfld_dsi_connector *dsi_connector,
        int pipe)
{
 struct mdfld_dsi_pkg_sender *pkg_sender;
 struct mdfld_dsi_config *dsi_config =
    mdfld_dsi_get_config(dsi_connector);
 struct drm_device *dev = dsi_config->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 const struct psb_offset *map = &dev_priv->regmap[pipe];
 u32 mipi_val = 0;

 if (!dsi_connector) {
  DRM_ERROR("Invalid parameter\n");
  return -EINVAL;
 }

 pkg_sender = dsi_connector->pkg_sender;

 if (!pkg_sender || IS_ERR(pkg_sender)) {
  pkg_sender = kzalloc(sizeof(struct mdfld_dsi_pkg_sender),
        GFP_KERNEL);
  if (!pkg_sender) {
   DRM_ERROR("Create DSI pkg sender failed\n");
   return -ENOMEM;
  }
  dsi_connector->pkg_sender = (void *)pkg_sender;
 }

 pkg_sender->dev = dev;
 pkg_sender->dsi_connector = dsi_connector;
 pkg_sender->pipe = pipe;
 pkg_sender->pkg_num = 0;
 pkg_sender->panel_mode = 0;
 pkg_sender->status = MDFLD_DSI_PKG_SENDER_FREE;



 pkg_sender->dpll_reg = map->dpll;
 pkg_sender->dspcntr_reg = map->cntr;
 pkg_sender->pipeconf_reg = map->conf;
 pkg_sender->dsplinoff_reg = map->linoff;
 pkg_sender->dspsurf_reg = map->surf;
 pkg_sender->pipestat_reg = map->status;

 pkg_sender->mipi_intr_stat_reg = MIPI_INTR_STAT_REG(pipe);
 pkg_sender->mipi_lp_gen_data_reg = MIPI_LP_GEN_DATA_REG(pipe);
 pkg_sender->mipi_hs_gen_data_reg = MIPI_HS_GEN_DATA_REG(pipe);
 pkg_sender->mipi_lp_gen_ctrl_reg = MIPI_LP_GEN_CTRL_REG(pipe);
 pkg_sender->mipi_hs_gen_ctrl_reg = MIPI_HS_GEN_CTRL_REG(pipe);
 pkg_sender->mipi_gen_fifo_stat_reg = MIPI_GEN_FIFO_STAT_REG(pipe);
 pkg_sender->mipi_data_addr_reg = MIPI_DATA_ADD_REG(pipe);
 pkg_sender->mipi_data_len_reg = MIPI_DATA_LEN_REG(pipe);
 pkg_sender->mipi_cmd_addr_reg = MIPI_CMD_ADD_REG(pipe);
 pkg_sender->mipi_cmd_len_reg = MIPI_CMD_LEN_REG(pipe);


 spin_lock_init(&pkg_sender->lock);

 if (mdfld_get_panel_type(dev, pipe) != TC35876X) {




  mipi_val = PASS_FROM_SPHY_TO_AFE | SEL_FLOPPED_HSTX;

  if (pipe == 0)
   mipi_val |= 0x2;

  REG_WRITE(MIPI_PORT_CONTROL(pipe), mipi_val);
  REG_READ(MIPI_PORT_CONTROL(pipe));


  mdfld_dsi_controller_init(dsi_config, pipe);
 }

 return 0;
}
