
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quantization_range; } ;
union hdmi_infoframe {TYPE_1__ avi; } ;
struct tda998x_priv {int rgb_quant_range; int connector; } ;
struct drm_display_mode {int dummy; } ;


 int DIP_IF_FLAGS_IF2 ;
 int HDMI_QUANTIZATION_RANGE_FULL ;
 int REG_IF2_HB0 ;
 int drm_hdmi_avi_infoframe_from_display_mode (TYPE_1__*,int *,struct drm_display_mode const*) ;
 int drm_hdmi_avi_infoframe_quant_range (TYPE_1__*,int *,struct drm_display_mode const*,int ) ;
 int tda998x_write_if (struct tda998x_priv*,int ,int ,union hdmi_infoframe*) ;

__attribute__((used)) static void
tda998x_write_avi(struct tda998x_priv *priv, const struct drm_display_mode *mode)
{
 union hdmi_infoframe frame;

 drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
       &priv->connector, mode);
 frame.avi.quantization_range = HDMI_QUANTIZATION_RANGE_FULL;
 drm_hdmi_avi_infoframe_quant_range(&frame.avi, &priv->connector, mode,
        priv->rgb_quant_range);

 tda998x_write_if(priv, DIP_IF_FLAGS_IF2, REG_IF2_HB0, &frame);
}
