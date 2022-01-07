
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_kms {int dummy; } ;
struct mdp4_dtv_encoder {unsigned long pixclock; int enabled; int hdmi_clk; int mdp_clk; } ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int BPC8 ;
 int DBG (char*,unsigned long) ;
 int DRM_DEV_ERROR (int ,char*,int,...) ;
 int INTF_LCDC_DTV ;
 int MDP4_DMA_CONFIG_B_BPC (int ) ;
 int MDP4_DMA_CONFIG_G_BPC (int ) ;
 int MDP4_DMA_CONFIG_PACK (int) ;
 int MDP4_DMA_CONFIG_R_BPC (int ) ;
 int REG_MDP4_DTV_ENABLE ;
 scalar_t__ WARN_ON (int) ;
 int bs_set (struct mdp4_dtv_encoder*,int) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 struct mdp4_kms* get_kms (struct drm_encoder*) ;
 int mdp4_crtc_set_config (int ,int) ;
 int mdp4_crtc_set_intf (int ,int ,int) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 struct mdp4_dtv_encoder* to_mdp4_dtv_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp4_dtv_encoder_enable(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct mdp4_dtv_encoder *mdp4_dtv_encoder = to_mdp4_dtv_encoder(encoder);
 struct mdp4_kms *mdp4_kms = get_kms(encoder);
 unsigned long pc = mdp4_dtv_encoder->pixclock;
 int ret;

 if (WARN_ON(mdp4_dtv_encoder->enabled))
  return;

 mdp4_crtc_set_config(encoder->crtc,
   MDP4_DMA_CONFIG_R_BPC(BPC8) |
   MDP4_DMA_CONFIG_G_BPC(BPC8) |
   MDP4_DMA_CONFIG_B_BPC(BPC8) |
   MDP4_DMA_CONFIG_PACK(0x21));
 mdp4_crtc_set_intf(encoder->crtc, INTF_LCDC_DTV, 1);

 bs_set(mdp4_dtv_encoder, 1);

 DBG("setting mdp_clk=%lu", pc);

 ret = clk_set_rate(mdp4_dtv_encoder->mdp_clk, pc);
 if (ret)
  DRM_DEV_ERROR(dev->dev, "failed to set mdp_clk to %lu: %d\n",
   pc, ret);

 ret = clk_prepare_enable(mdp4_dtv_encoder->mdp_clk);
 if (ret)
  DRM_DEV_ERROR(dev->dev, "failed to enabled mdp_clk: %d\n", ret);

 ret = clk_prepare_enable(mdp4_dtv_encoder->hdmi_clk);
 if (ret)
  DRM_DEV_ERROR(dev->dev, "failed to enable hdmi_clk: %d\n", ret);

 mdp4_write(mdp4_kms, REG_MDP4_DTV_ENABLE, 1);

 mdp4_dtv_encoder->enabled = 1;
}
