
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 int PRB1_BASE ;
 int PRB2_BASE ;
 int SRB0_BASE ;
 int SRB1_BASE ;
 int SRB2_BASE ;
 int SRB3_BASE ;
 int init_unused_ring (struct intel_gt*,int ) ;

__attribute__((used)) static void init_unused_rings(struct intel_gt *gt)
{
 struct drm_i915_private *i915 = gt->i915;

 if (IS_I830(i915)) {
  init_unused_ring(gt, PRB1_BASE);
  init_unused_ring(gt, SRB0_BASE);
  init_unused_ring(gt, SRB1_BASE);
  init_unused_ring(gt, SRB2_BASE);
  init_unused_ring(gt, SRB3_BASE);
 } else if (IS_GEN(i915, 2)) {
  init_unused_ring(gt, SRB0_BASE);
  init_unused_ring(gt, SRB1_BASE);
 } else if (IS_GEN(i915, 3)) {
  init_unused_ring(gt, PRB1_BASE);
  init_unused_ring(gt, PRB2_BASE);
 }
}
