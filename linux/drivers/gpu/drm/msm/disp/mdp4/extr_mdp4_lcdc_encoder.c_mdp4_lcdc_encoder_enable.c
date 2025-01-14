
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mdp4_lcdc_encoder {unsigned long pixclock; int enabled; int panel_node; int lcdc_clk; int * regs; } ;
struct mdp4_kms {int dummy; } ;
struct drm_panel {int dummy; } ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int ARRAY_SIZE (int *) ;
 int BPC6 ;
 int DBG (char*,unsigned long) ;
 int DRM_DEV_ERROR (TYPE_1__*,char*,int) ;
 int INTF_LCDC_DTV ;
 int IS_ERR (struct drm_panel*) ;
 int MDP4_DMA_CONFIG_B_BPC (int ) ;
 int MDP4_DMA_CONFIG_DEFLKR_EN ;
 int MDP4_DMA_CONFIG_DITHER_EN ;
 int MDP4_DMA_CONFIG_G_BPC (int ) ;
 int MDP4_DMA_CONFIG_PACK (int) ;
 int MDP4_DMA_CONFIG_PACK_ALIGN_MSB ;
 int MDP4_DMA_CONFIG_R_BPC (int ) ;
 int REG_MDP4_LCDC_ENABLE ;
 scalar_t__ WARN_ON (int) ;
 int bs_set (struct mdp4_lcdc_encoder*,int) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int drm_panel_enable (struct drm_panel*) ;
 int drm_panel_prepare (struct drm_panel*) ;
 struct mdp4_kms* get_kms (struct drm_encoder*) ;
 int mdp4_crtc_set_config (int ,int) ;
 int mdp4_crtc_set_intf (int ,int ,int ) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 struct drm_panel* of_drm_find_panel (int ) ;
 int of_property_read_bool (int ,char*) ;
 int regulator_enable (int ) ;
 int setup_phy (struct drm_encoder*) ;
 struct mdp4_lcdc_encoder* to_mdp4_lcdc_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp4_lcdc_encoder_enable(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
   to_mdp4_lcdc_encoder(encoder);
 unsigned long pc = mdp4_lcdc_encoder->pixclock;
 struct mdp4_kms *mdp4_kms = get_kms(encoder);
 struct drm_panel *panel;
 uint32_t config;
 int i, ret;

 if (WARN_ON(mdp4_lcdc_encoder->enabled))
  return;


 config =
  MDP4_DMA_CONFIG_R_BPC(BPC6) |
  MDP4_DMA_CONFIG_G_BPC(BPC6) |
  MDP4_DMA_CONFIG_B_BPC(BPC6) |
  MDP4_DMA_CONFIG_PACK(0x21) |
  MDP4_DMA_CONFIG_DEFLKR_EN |
  MDP4_DMA_CONFIG_DITHER_EN;

 if (!of_property_read_bool(dev->dev->of_node, "qcom,lcdc-align-lsb"))
  config |= MDP4_DMA_CONFIG_PACK_ALIGN_MSB;

 mdp4_crtc_set_config(encoder->crtc, config);
 mdp4_crtc_set_intf(encoder->crtc, INTF_LCDC_DTV, 0);

 bs_set(mdp4_lcdc_encoder, 1);

 for (i = 0; i < ARRAY_SIZE(mdp4_lcdc_encoder->regs); i++) {
  ret = regulator_enable(mdp4_lcdc_encoder->regs[i]);
  if (ret)
   DRM_DEV_ERROR(dev->dev, "failed to enable regulator: %d\n", ret);
 }

 DBG("setting lcdc_clk=%lu", pc);
 ret = clk_set_rate(mdp4_lcdc_encoder->lcdc_clk, pc);
 if (ret)
  DRM_DEV_ERROR(dev->dev, "failed to configure lcdc_clk: %d\n", ret);
 ret = clk_prepare_enable(mdp4_lcdc_encoder->lcdc_clk);
 if (ret)
  DRM_DEV_ERROR(dev->dev, "failed to enable lcdc_clk: %d\n", ret);

 panel = of_drm_find_panel(mdp4_lcdc_encoder->panel_node);
 if (!IS_ERR(panel)) {
  drm_panel_prepare(panel);
  drm_panel_enable(panel);
 }

 setup_phy(encoder);

 mdp4_write(mdp4_kms, REG_MDP4_LCDC_ENABLE, 1);

 mdp4_lcdc_encoder->enabled = 1;
}
