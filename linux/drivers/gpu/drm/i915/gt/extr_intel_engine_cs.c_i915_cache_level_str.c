
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int HAS_LLC (struct drm_i915_private*) ;





const char *i915_cache_level_str(struct drm_i915_private *i915, int type)
{
 switch (type) {
 case 129: return " uncached";
 case 130: return HAS_LLC(i915) ? " LLC" : " snooped";
 case 131: return " L3+LLC";
 case 128: return " WT";
 default: return "";
 }
}
