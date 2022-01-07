
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {int crtc; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {int format; } ;
 int EINVAL ;

__attribute__((used)) static int fsl_dcu_drm_plane_atomic_check(struct drm_plane *plane,
       struct drm_plane_state *state)
{
 struct drm_framebuffer *fb = state->fb;

 if (!state->fb || !state->crtc)
  return 0;

 switch (fb->format->format) {
 case 133:
 case 132:
 case 129:
 case 134:
 case 130:
 case 135:
 case 131:
 case 136:
 case 128:
  return 0;
 default:
  return -EINVAL;
 }
}
