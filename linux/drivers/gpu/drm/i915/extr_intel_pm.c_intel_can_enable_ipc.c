
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int symmetric_memory; } ;
struct drm_i915_private {TYPE_1__ dram_info; } ;


 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;

__attribute__((used)) static bool intel_can_enable_ipc(struct drm_i915_private *dev_priv)
{

 if (IS_SKYLAKE(dev_priv))
  return 0;


 if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv))
  return dev_priv->dram_info.symmetric_memory;

 return 1;
}
