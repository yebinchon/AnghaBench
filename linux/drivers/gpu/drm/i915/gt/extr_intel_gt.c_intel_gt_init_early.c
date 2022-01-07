
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int uc; int closed_lock; int closed_vma; int irq_lock; int * uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int uncore; } ;


 int INIT_LIST_HEAD (int *) ;
 int intel_gt_init_hangcheck (struct intel_gt*) ;
 int intel_gt_init_reset (struct intel_gt*) ;
 int intel_gt_pm_init_early (struct intel_gt*) ;
 int intel_uc_init_early (int *) ;
 int spin_lock_init (int *) ;

void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
{
 gt->i915 = i915;
 gt->uncore = &i915->uncore;

 spin_lock_init(&gt->irq_lock);

 INIT_LIST_HEAD(&gt->closed_vma);
 spin_lock_init(&gt->closed_lock);

 intel_gt_init_hangcheck(gt);
 intel_gt_init_reset(gt);
 intel_gt_pm_init_early(gt);
 intel_uc_init_early(&gt->uc);
}
