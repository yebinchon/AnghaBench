
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_avi_infoframe {int pixel_repeat; int video_code; int picture_aspect; int scan_mode; int active_aspect; scalar_t__ itc; int content_type; } ;
struct drm_display_mode {int flags; int picture_aspect_ratio; } ;
struct drm_connector {int dummy; } ;
typedef enum hdmi_picture_aspect { ____Placeholder_hdmi_picture_aspect } hdmi_picture_aspect ;


 int DRM_MODE_FLAG_3D_MASK ;
 int DRM_MODE_FLAG_DBLCLK ;
 int EINVAL ;
 int HDMI_ACTIVE_ASPECT_PICTURE ;
 int HDMI_CONTENT_TYPE_GRAPHICS ;
 int HDMI_PICTURE_ASPECT_16_9 ;
 int HDMI_PICTURE_ASPECT_NONE ;
 int HDMI_SCAN_MODE_UNDERSCAN ;
 int drm_get_cea_aspect_ratio (int) ;
 int drm_match_cea_mode (struct drm_display_mode const*) ;
 int drm_match_hdmi_mode (struct drm_display_mode const*) ;
 scalar_t__ drm_valid_hdmi_vic (int ) ;
 int hdmi_avi_infoframe_init (struct hdmi_avi_infoframe*) ;
 int is_hdmi2_sink (struct drm_connector*) ;

int
drm_hdmi_avi_infoframe_from_display_mode(struct hdmi_avi_infoframe *frame,
      struct drm_connector *connector,
      const struct drm_display_mode *mode)
{
 enum hdmi_picture_aspect picture_aspect;
 int err;

 if (!frame || !mode)
  return -EINVAL;

 err = hdmi_avi_infoframe_init(frame);
 if (err < 0)
  return err;

 if (mode->flags & DRM_MODE_FLAG_DBLCLK)
  frame->pixel_repeat = 1;

 frame->video_code = drm_match_cea_mode(mode);






 if (!is_hdmi2_sink(connector) && frame->video_code > 64)
  frame->video_code = 0;







 if (frame->video_code) {
  u8 vendor_if_vic = drm_match_hdmi_mode(mode);
  bool is_s3d = mode->flags & DRM_MODE_FLAG_3D_MASK;

  if (drm_valid_hdmi_vic(vendor_if_vic) && !is_s3d)
   frame->video_code = 0;
 }

 frame->picture_aspect = HDMI_PICTURE_ASPECT_NONE;






 frame->content_type = HDMI_CONTENT_TYPE_GRAPHICS;
 frame->itc = 0;





 picture_aspect = mode->picture_aspect_ratio;
 if (picture_aspect == HDMI_PICTURE_ASPECT_NONE)
  picture_aspect = drm_get_cea_aspect_ratio(frame->video_code);






 if (picture_aspect > HDMI_PICTURE_ASPECT_16_9) {
  if (picture_aspect !=
      drm_get_cea_aspect_ratio(frame->video_code))
   return -EINVAL;
  picture_aspect = HDMI_PICTURE_ASPECT_NONE;
 }

 frame->picture_aspect = picture_aspect;
 frame->active_aspect = HDMI_ACTIVE_ASPECT_PICTURE;
 frame->scan_mode = HDMI_SCAN_MODE_UNDERSCAN;

 return 0;
}
