
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdmi; } ;
union hdmi_infoframe {TYPE_1__ vendor; } ;
struct tda998x_priv {int connector; } ;
struct drm_display_mode {int dummy; } ;


 int DIP_IF_FLAGS_IF1 ;
 int REG_DIP_IF_FLAGS ;
 int REG_IF1_HB0 ;
 scalar_t__ drm_hdmi_vendor_infoframe_from_display_mode (int *,int *,struct drm_display_mode const*) ;
 int reg_clear (struct tda998x_priv*,int ,int ) ;
 int tda998x_write_if (struct tda998x_priv*,int ,int ,union hdmi_infoframe*) ;

__attribute__((used)) static void tda998x_write_vsi(struct tda998x_priv *priv,
         const struct drm_display_mode *mode)
{
 union hdmi_infoframe frame;

 if (drm_hdmi_vendor_infoframe_from_display_mode(&frame.vendor.hdmi,
       &priv->connector,
       mode))
  reg_clear(priv, REG_DIP_IF_FLAGS, DIP_IF_FLAGS_IF1);
 else
  tda998x_write_if(priv, DIP_IF_FLAGS_IF1, REG_IF1_HB0, &frame);
}
