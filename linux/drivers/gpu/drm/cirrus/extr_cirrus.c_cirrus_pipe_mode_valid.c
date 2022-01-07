
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_crtc {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_BAD ;
 int MODE_OK ;
 scalar_t__ cirrus_check_size (int ,int ,int *) ;

__attribute__((used)) static enum drm_mode_status cirrus_pipe_mode_valid(struct drm_crtc *crtc,
         const struct drm_display_mode *mode)
{
 if (cirrus_check_size(mode->hdisplay, mode->vdisplay, ((void*)0)) < 0)
  return MODE_BAD;
 return MODE_OK;
}
