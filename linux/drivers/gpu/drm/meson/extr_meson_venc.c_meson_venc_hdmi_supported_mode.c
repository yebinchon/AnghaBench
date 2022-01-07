
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int flags; int hdisplay; int vdisplay; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int MODE_BAD ;
 int MODE_BAD_HVALUE ;
 int MODE_BAD_VVALUE ;
 int MODE_OK ;

enum drm_mode_status
meson_venc_hdmi_supported_mode(const struct drm_display_mode *mode)
{
 if (mode->flags & ~(DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
       DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC))
  return MODE_BAD;

 if (mode->hdisplay < 640 || mode->hdisplay > 1920)
  return MODE_BAD_HVALUE;

 if (mode->vdisplay < 480 || mode->vdisplay > 1200)
  return MODE_BAD_VVALUE;

 return MODE_OK;
}
