
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int plane; TYPE_3__* fb; } ;
struct intel_plane_state {TYPE_5__* linked_plane; TYPE_4__ base; } ;
struct intel_plane {int id; } ;
struct intel_crtc_scaler_state {TYPE_6__* scalers; } ;
struct TYPE_7__ {int dev; } ;
struct intel_crtc {int num_scalers; int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_12__ {int in_use; int mode; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_9__ {TYPE_2__* format; } ;
struct TYPE_8__ {int num_planes; scalar_t__ is_yuv; } ;


 int DRM_DEBUG_KMS (char*,int ,int,char const*,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PS_PLANE_Y_SEL (int ) ;
 int PS_SCALER_MODE_NORMAL ;
 int PS_SCALER_MODE_PLANAR ;
 int SKL_PS_SCALER_MODE_DYN ;
 int SKL_PS_SCALER_MODE_HQ ;
 int SKL_PS_SCALER_MODE_NV12 ;
 scalar_t__ WARN (int,char*,char const*,int) ;
 scalar_t__ icl_is_hdr_plane (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
          int num_scalers_need, struct intel_crtc *intel_crtc,
          const char *name, int idx,
          struct intel_plane_state *plane_state,
          int *scaler_id)
{
 struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
 int j;
 u32 mode;

 if (*scaler_id < 0) {

  for (j = 0; j < intel_crtc->num_scalers; j++) {
   if (scaler_state->scalers[j].in_use)
    continue;

   *scaler_id = j;
   scaler_state->scalers[*scaler_id].in_use = 1;
   break;
  }
 }

 if (WARN(*scaler_id < 0, "Cannot find scaler for %s:%d\n", name, idx))
  return;


 if (plane_state && plane_state->base.fb &&
     plane_state->base.fb->format->is_yuv &&
     plane_state->base.fb->format->num_planes > 1) {
  struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
  if (IS_GEN(dev_priv, 9) &&
      !IS_GEMINILAKE(dev_priv)) {
   mode = SKL_PS_SCALER_MODE_NV12;
  } else if (icl_is_hdr_plane(dev_priv, plane->id)) {





   mode = PS_SCALER_MODE_NORMAL;
  } else {
   mode = PS_SCALER_MODE_PLANAR;

   if (plane_state->linked_plane)
    mode |= PS_PLANE_Y_SEL(plane_state->linked_plane->id);
  }
 } else if (INTEL_GEN(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)) {
  mode = PS_SCALER_MODE_NORMAL;
 } else if (num_scalers_need == 1 && intel_crtc->num_scalers > 1) {





  scaler_state->scalers[*scaler_id].in_use = 0;
  *scaler_id = 0;
  scaler_state->scalers[0].in_use = 1;
  mode = SKL_PS_SCALER_MODE_HQ;
 } else {
  mode = SKL_PS_SCALER_MODE_DYN;
 }

 DRM_DEBUG_KMS("Attached scaler id %u.%u to %s:%d\n",
        intel_crtc->pipe, *scaler_id, name, idx);
 scaler_state->scalers[*scaler_id].mode = mode;
}
