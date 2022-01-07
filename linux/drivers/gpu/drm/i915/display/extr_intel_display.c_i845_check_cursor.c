
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ visible; int crtc_h; int crtc_w; struct drm_framebuffer* fb; } ;
struct intel_plane_state {int ctl; TYPE_1__* color_plane; TYPE_2__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_framebuffer {int* pitches; } ;
struct TYPE_3__ {int stride; } ;


 int DRM_DEBUG (char*,int ,int ) ;
 int DRM_DEBUG_KMS (char*,int) ;
 int EINVAL ;
 int WARN_ON (int) ;
 int i845_cursor_ctl (struct intel_crtc_state*,struct intel_plane_state*) ;
 int i845_cursor_size_ok (struct intel_plane_state*) ;
 int intel_check_cursor (struct intel_crtc_state*,struct intel_plane_state*) ;

__attribute__((used)) static int i845_check_cursor(struct intel_crtc_state *crtc_state,
        struct intel_plane_state *plane_state)
{
 const struct drm_framebuffer *fb = plane_state->base.fb;
 int ret;

 ret = intel_check_cursor(crtc_state, plane_state);
 if (ret)
  return ret;


 if (!fb)
  return 0;


 if (!i845_cursor_size_ok(plane_state)) {
  DRM_DEBUG("Cursor dimension %dx%d not supported\n",
     plane_state->base.crtc_w,
     plane_state->base.crtc_h);
  return -EINVAL;
 }

 WARN_ON(plane_state->base.visible &&
  plane_state->color_plane[0].stride != fb->pitches[0]);

 switch (fb->pitches[0]) {
 case 256:
 case 512:
 case 1024:
 case 2048:
  break;
 default:
  DRM_DEBUG_KMS("Invalid cursor stride (%u)\n",
         fb->pitches[0]);
  return -EINVAL;
 }

 plane_state->ctl = i845_cursor_ctl(crtc_state, plane_state);

 return 0;
}
