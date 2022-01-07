
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tcon {int regs; } ;
struct drm_encoder {int encoder_type; } ;


 int DRM_DEBUG_DRIVER (char*) ;





 int SUN4I_TCON_GCTL_REG ;
 int SUN4I_TCON_GCTL_TCON_ENABLE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int sun4i_tcon_channel_set_status (struct sun4i_tcon*,int,int) ;
 int sun4i_tcon_lvds_set_status (struct sun4i_tcon*,struct drm_encoder const*,int) ;

void sun4i_tcon_set_status(struct sun4i_tcon *tcon,
      const struct drm_encoder *encoder,
      bool enabled)
{
 bool is_lvds = 0;
 int channel;

 switch (encoder->encoder_type) {
 case 131:
  is_lvds = 1;

 case 132:
 case 130:
  channel = 0;
  break;
 case 129:
 case 128:
  channel = 1;
  break;
 default:
  DRM_DEBUG_DRIVER("Unknown encoder type, doing nothing...\n");
  return;
 }

 if (is_lvds && !enabled)
  sun4i_tcon_lvds_set_status(tcon, encoder, 0);

 regmap_update_bits(tcon->regs, SUN4I_TCON_GCTL_REG,
      SUN4I_TCON_GCTL_TCON_ENABLE,
      enabled ? SUN4I_TCON_GCTL_TCON_ENABLE : 0);

 if (is_lvds && enabled)
  sun4i_tcon_lvds_set_status(tcon, encoder, 1);

 sun4i_tcon_channel_set_status(tcon, channel, enabled);
}
