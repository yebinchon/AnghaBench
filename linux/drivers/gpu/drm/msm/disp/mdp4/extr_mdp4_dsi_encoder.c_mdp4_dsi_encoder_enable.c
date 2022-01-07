
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_kms {int dummy; } ;
struct mdp4_dsi_encoder {int enabled; } ;
struct drm_encoder {int crtc; } ;


 int BPC8 ;
 int INTF_DSI_VIDEO ;
 int MDP4_DMA_CONFIG_B_BPC (int ) ;
 int MDP4_DMA_CONFIG_DEFLKR_EN ;
 int MDP4_DMA_CONFIG_DITHER_EN ;
 int MDP4_DMA_CONFIG_G_BPC (int ) ;
 int MDP4_DMA_CONFIG_PACK (int) ;
 int MDP4_DMA_CONFIG_PACK_ALIGN_MSB ;
 int MDP4_DMA_CONFIG_R_BPC (int ) ;
 int REG_MDP4_DSI_ENABLE ;
 struct mdp4_kms* get_kms (struct drm_encoder*) ;
 int mdp4_crtc_set_config (int ,int) ;
 int mdp4_crtc_set_intf (int ,int ,int ) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 struct mdp4_dsi_encoder* to_mdp4_dsi_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp4_dsi_encoder_enable(struct drm_encoder *encoder)
{
 struct mdp4_dsi_encoder *mdp4_dsi_encoder = to_mdp4_dsi_encoder(encoder);
 struct mdp4_kms *mdp4_kms = get_kms(encoder);

 if (mdp4_dsi_encoder->enabled)
  return;

  mdp4_crtc_set_config(encoder->crtc,
   MDP4_DMA_CONFIG_PACK_ALIGN_MSB |
   MDP4_DMA_CONFIG_DEFLKR_EN |
   MDP4_DMA_CONFIG_DITHER_EN |
   MDP4_DMA_CONFIG_R_BPC(BPC8) |
   MDP4_DMA_CONFIG_G_BPC(BPC8) |
   MDP4_DMA_CONFIG_B_BPC(BPC8) |
   MDP4_DMA_CONFIG_PACK(0x21));

 mdp4_crtc_set_intf(encoder->crtc, INTF_DSI_VIDEO, 0);

 mdp4_write(mdp4_kms, REG_MDP4_DSI_ENABLE, 1);

 mdp4_dsi_encoder->enabled = 1;
}
