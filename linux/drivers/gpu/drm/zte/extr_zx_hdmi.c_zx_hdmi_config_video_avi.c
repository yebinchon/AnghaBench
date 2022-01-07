
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int colorspace; } ;
union hdmi_infoframe {TYPE_1__ avi; } ;
struct zx_hdmi {int dev; int connector; } ;
struct drm_display_mode {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int FSEL_AVI ;
 int HDMI_COLORSPACE_YUV444 ;
 int drm_hdmi_avi_infoframe_from_display_mode (TYPE_1__*,int *,struct drm_display_mode*) ;
 int zx_hdmi_infoframe_trans (struct zx_hdmi*,union hdmi_infoframe*,int ) ;

__attribute__((used)) static int zx_hdmi_config_video_avi(struct zx_hdmi *hdmi,
        struct drm_display_mode *mode)
{
 union hdmi_infoframe frame;
 int ret;

 ret = drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
             &hdmi->connector,
             mode);
 if (ret) {
  DRM_DEV_ERROR(hdmi->dev, "failed to get avi infoframe: %d\n",
         ret);
  return ret;
 }


 frame.avi.colorspace = HDMI_COLORSPACE_YUV444;

 return zx_hdmi_infoframe_trans(hdmi, &frame, FSEL_AVI);
}
