
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
typedef enum hdmi_quantization_range { ____Placeholder_hdmi_quantization_range } hdmi_quantization_range ;


 int HDMI_QUANTIZATION_RANGE_FULL ;
 int HDMI_QUANTIZATION_RANGE_LIMITED ;
 int drm_match_cea_mode (struct drm_display_mode const*) ;

enum hdmi_quantization_range
drm_default_rgb_quant_range(const struct drm_display_mode *mode)
{

 return drm_match_cea_mode(mode) > 1 ?
  HDMI_QUANTIZATION_RANGE_LIMITED :
  HDMI_QUANTIZATION_RANGE_FULL;
}
