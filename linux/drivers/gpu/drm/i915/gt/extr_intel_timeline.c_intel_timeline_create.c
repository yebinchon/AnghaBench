
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int dummy; } ;
struct intel_gt {int dummy; } ;
struct i915_vma {int dummy; } ;


 int ENOMEM ;
 struct intel_timeline* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int intel_timeline_init (struct intel_timeline*,struct intel_gt*,struct i915_vma*) ;
 int kfree (struct intel_timeline*) ;
 struct intel_timeline* kzalloc (int,int ) ;

struct intel_timeline *
intel_timeline_create(struct intel_gt *gt, struct i915_vma *global_hwsp)
{
 struct intel_timeline *timeline;
 int err;

 timeline = kzalloc(sizeof(*timeline), GFP_KERNEL);
 if (!timeline)
  return ERR_PTR(-ENOMEM);

 err = intel_timeline_init(timeline, gt, global_hwsp);
 if (err) {
  kfree(timeline);
  return ERR_PTR(err);
 }

 return timeline;
}
