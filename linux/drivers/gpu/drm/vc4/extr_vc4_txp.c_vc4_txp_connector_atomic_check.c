
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_framebuffer {scalar_t__ width; scalar_t__ height; int* pitches; TYPE_3__* format; } ;
struct TYPE_5__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_crtc_state {TYPE_2__ mode; } ;
struct drm_connector_state {TYPE_1__* writeback_job; int crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_6__ {scalar_t__ format; } ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DRM_DEBUG_KMS (char*,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int GENMASK (int,int ) ;
 struct drm_connector_state* drm_atomic_get_new_connector_state (struct drm_atomic_state*,struct drm_connector*) ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,int ) ;
 scalar_t__* drm_fmts ;
 int vc4_crtc_txp_armed (struct drm_crtc_state*) ;

__attribute__((used)) static int vc4_txp_connector_atomic_check(struct drm_connector *conn,
       struct drm_atomic_state *state)
{
 struct drm_connector_state *conn_state;
 struct drm_crtc_state *crtc_state;
 struct drm_framebuffer *fb;
 int i;

 conn_state = drm_atomic_get_new_connector_state(state, conn);
 if (!conn_state->writeback_job)
  return 0;

 crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);

 fb = conn_state->writeback_job->fb;
 if (fb->width != crtc_state->mode.hdisplay ||
     fb->height != crtc_state->mode.vdisplay) {
  DRM_DEBUG_KMS("Invalid framebuffer size %ux%u\n",
         fb->width, fb->height);
  return -EINVAL;
 }

 for (i = 0; i < ARRAY_SIZE(drm_fmts); i++) {
  if (fb->format->format == drm_fmts[i])
   break;
 }

 if (i == ARRAY_SIZE(drm_fmts))
  return -EINVAL;


 if (fb->pitches[0] & GENMASK(3, 0))
  return -EINVAL;

 vc4_crtc_txp_armed(crtc_state);

 return 0;
}
