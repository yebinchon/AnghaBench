
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_display_mode {int dummy; } ;
struct sti_hdmi {int colorspace; int drm_connector; struct drm_display_mode mode; } ;
struct hdmi_avi_infoframe {int colorimetry; int quantization_range; int colorspace; } ;
typedef int buffer ;


 int AVI ;
 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,int) ;
 int HDMI_COLORIMETRY_NONE ;
 int HDMI_INFOFRAME_SIZE (int ) ;
 int HDMI_QUANTIZATION_RANGE_DEFAULT ;
 int drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,int ,struct drm_display_mode*) ;
 int hdmi_avi_infoframe_pack (struct hdmi_avi_infoframe*,int *,int) ;
 int hdmi_infoframe_write_infopack (struct sti_hdmi*,int *,int) ;

__attribute__((used)) static int hdmi_avi_infoframe_config(struct sti_hdmi *hdmi)
{
 struct drm_display_mode *mode = &hdmi->mode;
 struct hdmi_avi_infoframe infoframe;
 u8 buffer[HDMI_INFOFRAME_SIZE(AVI)];
 int ret;

 DRM_DEBUG_DRIVER("\n");

 ret = drm_hdmi_avi_infoframe_from_display_mode(&infoframe,
             hdmi->drm_connector, mode);
 if (ret < 0) {
  DRM_ERROR("failed to setup AVI infoframe: %d\n", ret);
  return ret;
 }


 infoframe.colorspace = hdmi->colorspace;
 infoframe.quantization_range = HDMI_QUANTIZATION_RANGE_DEFAULT;
 infoframe.colorimetry = HDMI_COLORIMETRY_NONE;

 ret = hdmi_avi_infoframe_pack(&infoframe, buffer, sizeof(buffer));
 if (ret < 0) {
  DRM_ERROR("failed to pack AVI infoframe: %d\n", ret);
  return ret;
 }

 hdmi_infoframe_write_infopack(hdmi, buffer, ret);

 return 0;
}
