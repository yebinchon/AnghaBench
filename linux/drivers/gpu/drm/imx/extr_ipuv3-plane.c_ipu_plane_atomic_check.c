
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int x1; int y1; } ;
struct drm_plane_state {TYPE_2__ src; int dst; int crtc; int state; struct drm_framebuffer* fb; } ;
struct drm_plane {int type; TYPE_1__* dev; struct drm_plane_state* state; } ;
struct drm_framebuffer {int* pitches; TYPE_3__* format; } ;
struct drm_crtc_state {int mode_changed; int enable; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int format; int vsub; int hsub; } ;
struct TYPE_4__ {struct device* dev; } ;
 int DRM_PLANE_HELPER_NO_SCALING ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int dev_warn (struct device*,char*,int) ;
 struct drm_crtc_state* drm_atomic_get_existing_crtc_state (int ,int ) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;
 unsigned long drm_plane_state_to_eba (struct drm_plane_state*,int) ;
 unsigned long drm_plane_state_to_ubo (struct drm_plane_state*) ;
 unsigned long drm_plane_state_to_vbo (struct drm_plane_state*) ;
 int drm_rect_height (int *) ;
 scalar_t__ drm_rect_width (int *) ;

__attribute__((used)) static int ipu_plane_atomic_check(struct drm_plane *plane,
      struct drm_plane_state *state)
{
 struct drm_plane_state *old_state = plane->state;
 struct drm_crtc_state *crtc_state;
 struct device *dev = plane->dev->dev;
 struct drm_framebuffer *fb = state->fb;
 struct drm_framebuffer *old_fb = old_state->fb;
 unsigned long eba, ubo, vbo, old_ubo, old_vbo, alpha_eba;
 bool can_position = (plane->type == 129);
 int ret;


 if (!fb)
  return 0;

 if (!state->crtc)
  return -EINVAL;

 crtc_state =
  drm_atomic_get_existing_crtc_state(state->state, state->crtc);
 if (WARN_ON(!crtc_state))
  return -EINVAL;

 ret = drm_atomic_helper_check_plane_state(state, crtc_state,
        DRM_PLANE_HELPER_NO_SCALING,
        DRM_PLANE_HELPER_NO_SCALING,
        can_position, 1);
 if (ret)
  return ret;


 if (!crtc_state->enable)
  return 0;

 switch (plane->type) {
 case 128:

  if (drm_rect_width(&state->dst) < 13)
   return -EINVAL;
  break;
 case 129:
  break;
 default:
  dev_warn(dev, "Unsupported plane type %d\n", plane->type);
  return -EINVAL;
 }

 if (drm_rect_height(&state->dst) < 2)
  return -EINVAL;
 if (old_fb &&
     (drm_rect_width(&state->dst) != drm_rect_width(&old_state->dst) ||
      drm_rect_height(&state->dst) != drm_rect_height(&old_state->dst) ||
      fb->format != old_fb->format))
  crtc_state->mode_changed = 1;

 eba = drm_plane_state_to_eba(state, 0);

 if (eba & 0x7)
  return -EINVAL;

 if (fb->pitches[0] < 1 || fb->pitches[0] > 16384)
  return -EINVAL;

 if (old_fb && fb->pitches[0] != old_fb->pitches[0])
  crtc_state->mode_changed = 1;

 switch (fb->format->format) {
 case 135:
 case 132:
 case 134:
 case 131:
 case 133:
 case 130:
  vbo = drm_plane_state_to_vbo(state);

  if (vbo & 0x7 || vbo > 0xfffff8)
   return -EINVAL;

  if (old_fb && (fb->format == old_fb->format)) {
   old_vbo = drm_plane_state_to_vbo(old_state);
   if (vbo != old_vbo)
    crtc_state->mode_changed = 1;
  }

  if (fb->pitches[1] != fb->pitches[2])
   return -EINVAL;


 case 140:
 case 139:
  ubo = drm_plane_state_to_ubo(state);

  if (ubo & 0x7 || ubo > 0xfffff8)
   return -EINVAL;

  if (old_fb && (fb->format == old_fb->format)) {
   old_ubo = drm_plane_state_to_ubo(old_state);
   if (ubo != old_ubo)
    crtc_state->mode_changed = 1;
  }

  if (fb->pitches[1] < 1 || fb->pitches[1] > 16384)
   return -EINVAL;

  if (old_fb && old_fb->pitches[1] != fb->pitches[1])
   crtc_state->mode_changed = 1;





  if (((state->src.x1 >> 16) & (fb->format->hsub - 1)) ||
      ((state->src.y1 >> 16) & (fb->format->vsub - 1)))
   return -EINVAL;
  break;
 case 138:
 case 143:
 case 137:
 case 142:
 case 136:
 case 141:
  alpha_eba = drm_plane_state_to_eba(state, 1);
  if (alpha_eba & 0x7)
   return -EINVAL;

  if (fb->pitches[1] < 1 || fb->pitches[1] > 16384)
   return -EINVAL;

  if (old_fb && old_fb->pitches[1] != fb->pitches[1])
   crtc_state->mode_changed = 1;
  break;
 }

 return 0;
}
