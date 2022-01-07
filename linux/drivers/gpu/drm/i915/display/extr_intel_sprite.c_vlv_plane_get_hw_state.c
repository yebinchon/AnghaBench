
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_plane {int id; int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int I915_READ (int ) ;
 int POWER_DOMAIN_PIPE (int) ;
 int SPCNTR (int,int) ;
 int SP_ENABLE ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool
vlv_plane_get_hw_state(struct intel_plane *plane,
         enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum intel_display_power_domain power_domain;
 enum plane_id plane_id = plane->id;
 intel_wakeref_t wakeref;
 bool ret;

 power_domain = POWER_DOMAIN_PIPE(plane->pipe);
 wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 if (!wakeref)
  return 0;

 ret = I915_READ(SPCNTR(plane->pipe, plane_id)) & SP_ENABLE;

 *pipe = plane->pipe;

 intel_display_power_put(dev_priv, power_domain, wakeref);

 return ret;
}
