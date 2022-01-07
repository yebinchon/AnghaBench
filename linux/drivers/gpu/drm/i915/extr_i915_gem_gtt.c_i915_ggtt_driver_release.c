
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pagevec {scalar_t__ nr; int pages; } ;
struct TYPE_3__ {struct pagevec pvec; } ;
struct TYPE_4__ {TYPE_1__ wc_stash; } ;
struct drm_i915_private {TYPE_2__ mm; int ggtt; } ;


 int __pagevec_release (struct pagevec*) ;
 int fini_aliasing_ppgtt (int *) ;
 int ggtt_cleanup_hw (int *) ;
 int i915_gem_cleanup_stolen (struct drm_i915_private*) ;
 int set_pages_array_wb (int ,scalar_t__) ;

void i915_ggtt_driver_release(struct drm_i915_private *i915)
{
 struct pagevec *pvec;

 fini_aliasing_ppgtt(&i915->ggtt);

 ggtt_cleanup_hw(&i915->ggtt);

 pvec = &i915->mm.wc_stash.pvec;
 if (pvec->nr) {
  set_pages_array_wb(pvec->pages, pvec->nr);
  __pagevec_release(pvec);
 }

 i915_gem_cleanup_stolen(i915);
}
