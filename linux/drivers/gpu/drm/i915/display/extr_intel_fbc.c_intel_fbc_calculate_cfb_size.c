
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stride; } ;
struct intel_fbc_state_cache {TYPE_1__ fb; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int intel_fbc_get_plane_source_size (struct intel_fbc_state_cache*,int *,int*) ;
 int min (int,int) ;

__attribute__((used)) static int intel_fbc_calculate_cfb_size(struct drm_i915_private *dev_priv,
     struct intel_fbc_state_cache *cache)
{
 int lines;

 intel_fbc_get_plane_source_size(cache, ((void*)0), &lines);
 if (IS_GEN(dev_priv, 7))
  lines = min(lines, 2048);
 else if (INTEL_GEN(dev_priv) >= 8)
  lines = min(lines, 2560);


 return lines * cache->fb.stride;
}
