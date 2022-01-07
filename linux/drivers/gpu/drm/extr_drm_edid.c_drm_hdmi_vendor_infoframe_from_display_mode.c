
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct hdmi_vendor_infoframe {int s3d_struct; scalar_t__ vic; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_2__ {int has_hdmi_infoframe; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int DRM_MODE_FLAG_3D_MASK ;
 int EINVAL ;
 scalar_t__ drm_match_hdmi_mode (struct drm_display_mode const*) ;
 int hdmi_vendor_infoframe_init (struct hdmi_vendor_infoframe*) ;
 int s3d_structure_from_display_mode (struct drm_display_mode const*) ;

int
drm_hdmi_vendor_infoframe_from_display_mode(struct hdmi_vendor_infoframe *frame,
         struct drm_connector *connector,
         const struct drm_display_mode *mode)
{




 bool has_hdmi_infoframe = connector ?
  connector->display_info.has_hdmi_infoframe : 0;
 int err;
 u32 s3d_flags;
 u8 vic;

 if (!frame || !mode)
  return -EINVAL;

 if (!has_hdmi_infoframe)
  return -EINVAL;

 vic = drm_match_hdmi_mode(mode);
 s3d_flags = mode->flags & DRM_MODE_FLAG_3D_MASK;
 if (vic && s3d_flags)
  return -EINVAL;

 err = hdmi_vendor_infoframe_init(frame);
 if (err < 0)
  return err;

 frame->vic = vic;
 frame->s3d_struct = s3d_structure_from_display_mode(mode);

 return 0;
}
