
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_avi_infoframe {int quantization_range; int ycc_quantization_range; } ;
struct drm_display_mode {int dummy; } ;
struct drm_display_info {scalar_t__ rgb_quant_range_selectable; } ;
struct drm_connector {struct drm_display_info display_info; } ;
typedef enum hdmi_quantization_range { ____Placeholder_hdmi_quantization_range } hdmi_quantization_range ;


 int HDMI_QUANTIZATION_RANGE_DEFAULT ;
 int HDMI_QUANTIZATION_RANGE_LIMITED ;
 int HDMI_YCC_QUANTIZATION_RANGE_FULL ;
 int HDMI_YCC_QUANTIZATION_RANGE_LIMITED ;
 int drm_default_rgb_quant_range (struct drm_display_mode const*) ;
 int is_hdmi2_sink (struct drm_connector*) ;

void
drm_hdmi_avi_infoframe_quant_range(struct hdmi_avi_infoframe *frame,
       struct drm_connector *connector,
       const struct drm_display_mode *mode,
       enum hdmi_quantization_range rgb_quant_range)
{
 const struct drm_display_info *info = &connector->display_info;
 if (info->rgb_quant_range_selectable ||
     rgb_quant_range == drm_default_rgb_quant_range(mode))
  frame->quantization_range = rgb_quant_range;
 else
  frame->quantization_range = HDMI_QUANTIZATION_RANGE_DEFAULT;
 if (!is_hdmi2_sink(connector) ||
     rgb_quant_range == HDMI_QUANTIZATION_RANGE_LIMITED)
  frame->ycc_quantization_range =
   HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
 else
  frame->ycc_quantization_range =
   HDMI_YCC_QUANTIZATION_RANGE_FULL;
}
