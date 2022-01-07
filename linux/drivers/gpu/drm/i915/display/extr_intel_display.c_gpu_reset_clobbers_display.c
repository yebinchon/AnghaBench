
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ gpu_reset_clobbers_display; } ;


 TYPE_1__* INTEL_INFO (struct drm_i915_private*) ;
 scalar_t__ intel_has_gpu_reset (struct drm_i915_private*) ;

__attribute__((used)) static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
{
 return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
  intel_has_gpu_reset(dev_priv));
}
