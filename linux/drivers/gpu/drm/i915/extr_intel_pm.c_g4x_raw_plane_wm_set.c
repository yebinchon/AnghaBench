
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_8__ {struct g4x_pipe_wm* raw; } ;
struct TYPE_7__ {TYPE_4__ g4x; } ;
struct TYPE_6__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_3__ wm; TYPE_2__ base; } ;
struct g4x_pipe_wm {scalar_t__* plane; } ;
struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
struct TYPE_5__ {int dev; } ;


 int intel_wm_num_levels (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool g4x_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
     int level, enum plane_id plane_id, u16 value)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 bool dirty = 0;

 for (; level < intel_wm_num_levels(dev_priv); level++) {
  struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];

  dirty |= raw->plane[plane_id] != value;
  raw->plane[plane_id] = value;
 }

 return dirty;
}
