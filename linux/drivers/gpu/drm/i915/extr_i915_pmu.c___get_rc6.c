
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct intel_gt {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int GEN6_GT_GFX_RC6 ;
 int GEN6_GT_GFX_RC6p ;
 int GEN6_GT_GFX_RC6pp ;
 scalar_t__ HAS_RC6p (struct drm_i915_private*) ;
 scalar_t__ HAS_RC6pp (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int VLV_GT_RENDER_RC6 ;
 scalar_t__ intel_rc6_residency_ns (struct drm_i915_private*,int ) ;

__attribute__((used)) static u64 __get_rc6(struct intel_gt *gt)
{
 struct drm_i915_private *i915 = gt->i915;
 u64 val;

 val = intel_rc6_residency_ns(i915,
         IS_VALLEYVIEW(i915) ?
         VLV_GT_RENDER_RC6 :
         GEN6_GT_GFX_RC6);

 if (HAS_RC6p(i915))
  val += intel_rc6_residency_ns(i915, GEN6_GT_GFX_RC6p);

 if (HAS_RC6pp(i915))
  val += intel_rc6_residency_ns(i915, GEN6_GT_GFX_RC6pp);

 return val;
}
