
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int dummy; } ;
struct drm_i915_private {struct intel_gvt* gvt; } ;



__attribute__((used)) static inline struct intel_gvt *to_gvt(struct drm_i915_private *i915)
{
 return i915->gvt;
}
