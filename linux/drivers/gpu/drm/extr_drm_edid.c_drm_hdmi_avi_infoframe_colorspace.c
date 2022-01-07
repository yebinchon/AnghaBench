
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hdmi_avi_infoframe {size_t colorimetry; size_t extended_colorimetry; } ;
struct drm_connector_state {size_t colorspace; } ;


 size_t ARRAY_SIZE (size_t*) ;
 size_t EXTENDED_COLORIMETRY_MASK ;
 size_t FULL_COLORIMETRY_MASK ;
 size_t HDMI_COLORIMETRY_NO_DATA ;
 size_t NORMAL_COLORIMETRY_MASK ;
 size_t* hdmi_colorimetry_val ;

void
drm_hdmi_avi_infoframe_colorspace(struct hdmi_avi_infoframe *frame,
      const struct drm_connector_state *conn_state)
{
 u32 colorimetry_val;
 u32 colorimetry_index = conn_state->colorspace & FULL_COLORIMETRY_MASK;

 if (colorimetry_index >= ARRAY_SIZE(hdmi_colorimetry_val))
  colorimetry_val = HDMI_COLORIMETRY_NO_DATA;
 else
  colorimetry_val = hdmi_colorimetry_val[colorimetry_index];

 frame->colorimetry = colorimetry_val & NORMAL_COLORIMETRY_MASK;




 frame->extended_colorimetry = (colorimetry_val >> 2) &
     EXTENDED_COLORIMETRY_MASK;
}
