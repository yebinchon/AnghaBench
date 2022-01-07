
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int vdisplay; int hdisplay; } ;



__attribute__((used)) static bool amdgpu_display_is_hdtv_mode(const struct drm_display_mode *mode)
{

 if ((mode->vdisplay == 480 && mode->hdisplay == 720) ||
     (mode->vdisplay == 576) ||
     (mode->vdisplay == 720) ||
     (mode->vdisplay == 1080))
  return 1;
 else
  return 0;
}
