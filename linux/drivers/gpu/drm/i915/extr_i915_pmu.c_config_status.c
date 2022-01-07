
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_i915_private {int dummy; } ;


 int ENODEV ;
 int ENOENT ;
 int HAS_RC6 (struct drm_i915_private*) ;




 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_CHERRYVIEW (struct drm_i915_private*) ;
 int IS_VALLEYVIEW (struct drm_i915_private*) ;

__attribute__((used)) static int
config_status(struct drm_i915_private *i915, u64 config)
{
 switch (config) {
 case 131:
  if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))

   return -ENODEV;

 case 128:
  if (INTEL_GEN(i915) < 6)
   return -ENODEV;
  break;
 case 130:
  break;
 case 129:
  if (!HAS_RC6(i915))
   return -ENODEV;
  break;
 default:
  return -ENOENT;
 }

 return 0;
}
