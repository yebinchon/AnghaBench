
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_modeinfo {scalar_t__ clock; scalar_t__ vrefresh; int flags; int type; int name; int vscan; int vtotal; int vsync_end; int vsync_start; int vdisplay; int hskew; int htotal; int hsync_end; int hsync_start; int hdisplay; } ;
struct drm_display_mode {scalar_t__ clock; scalar_t__ vrefresh; int flags; int type; scalar_t__ status; int picture_aspect_ratio; scalar_t__* name; int vscan; int vtotal; int vsync_end; int vsync_start; int vdisplay; int hskew; int htotal; int hsync_end; int hsync_start; int hdisplay; } ;
struct drm_device {int dummy; } ;


 int CRTC_INTERLACE_HALVE_V ;
 int DRM_DISPLAY_MODE_LEN ;




 int DRM_MODE_FLAG_PIC_AR_MASK ;

 int DRM_MODE_TYPE_ALL ;
 int EINVAL ;
 int ERANGE ;
 int HDMI_PICTURE_ASPECT_16_9 ;
 int HDMI_PICTURE_ASPECT_256_135 ;
 int HDMI_PICTURE_ASPECT_4_3 ;
 int HDMI_PICTURE_ASPECT_64_27 ;
 int HDMI_PICTURE_ASPECT_NONE ;
 scalar_t__ INT_MAX ;
 scalar_t__ MODE_OK ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 scalar_t__ drm_mode_validate_driver (struct drm_device*,struct drm_display_mode*) ;
 int strncpy (scalar_t__*,int ,int) ;

int drm_mode_convert_umode(struct drm_device *dev,
      struct drm_display_mode *out,
      const struct drm_mode_modeinfo *in)
{
 if (in->clock > INT_MAX || in->vrefresh > INT_MAX)
  return -ERANGE;

 out->clock = in->clock;
 out->hdisplay = in->hdisplay;
 out->hsync_start = in->hsync_start;
 out->hsync_end = in->hsync_end;
 out->htotal = in->htotal;
 out->hskew = in->hskew;
 out->vdisplay = in->vdisplay;
 out->vsync_start = in->vsync_start;
 out->vsync_end = in->vsync_end;
 out->vtotal = in->vtotal;
 out->vscan = in->vscan;
 out->vrefresh = in->vrefresh;
 out->flags = in->flags;






 out->type = in->type & DRM_MODE_TYPE_ALL;
 strncpy(out->name, in->name, DRM_DISPLAY_MODE_LEN);
 out->name[DRM_DISPLAY_MODE_LEN-1] = 0;





 out->flags &= ~DRM_MODE_FLAG_PIC_AR_MASK;

 switch (in->flags & DRM_MODE_FLAG_PIC_AR_MASK) {
 case 130:
  out->picture_aspect_ratio = HDMI_PICTURE_ASPECT_4_3;
  break;
 case 132:
  out->picture_aspect_ratio = HDMI_PICTURE_ASPECT_16_9;
  break;
 case 129:
  out->picture_aspect_ratio = HDMI_PICTURE_ASPECT_64_27;
  break;
 case 131:
  out->picture_aspect_ratio = HDMI_PICTURE_ASPECT_256_135;
  break;
 case 128:
  out->picture_aspect_ratio = HDMI_PICTURE_ASPECT_NONE;
  break;
 default:
  return -EINVAL;
 }

 out->status = drm_mode_validate_driver(dev, out);
 if (out->status != MODE_OK)
  return -EINVAL;

 drm_mode_set_crtcinfo(out, CRTC_INTERLACE_HALVE_V);

 return 0;
}
