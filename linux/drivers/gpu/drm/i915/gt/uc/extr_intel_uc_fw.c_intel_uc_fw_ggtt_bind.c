
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct intel_uc_fw {struct drm_i915_gem_object* obj; } ;
struct intel_gt {struct i915_ggtt* ggtt; } ;
struct TYPE_8__ {scalar_t__ size; int start; } ;
struct i915_vma {int pages; TYPE_3__ node; TYPE_5__* vm; } ;
struct TYPE_10__ {int (* insert_entries ) (TYPE_5__*,struct i915_vma*,int ,int ) ;} ;
struct TYPE_9__ {scalar_t__ size; } ;
struct i915_ggtt {TYPE_5__ vm; TYPE_4__ uc_fw; } ;
struct TYPE_7__ {int pages; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct drm_i915_gem_object {TYPE_2__ mm; TYPE_1__ base; } ;


 int GEM_BUG_ON (int) ;
 int I915_CACHE_NONE ;
 int drm_clflush_sg (int ) ;
 int i915_gem_object_has_pinned_pages (struct drm_i915_gem_object*) ;
 int stub1 (TYPE_5__*,struct i915_vma*,int ,int ) ;
 int uc_fw_ggtt_offset (struct intel_uc_fw*,struct i915_ggtt*) ;

__attribute__((used)) static void intel_uc_fw_ggtt_bind(struct intel_uc_fw *uc_fw,
      struct intel_gt *gt)
{
 struct drm_i915_gem_object *obj = uc_fw->obj;
 struct i915_ggtt *ggtt = gt->ggtt;
 struct i915_vma dummy = {
  .node.start = uc_fw_ggtt_offset(uc_fw, ggtt),
  .node.size = obj->base.size,
  .pages = obj->mm.pages,
  .vm = &ggtt->vm,
 };

 GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
 GEM_BUG_ON(dummy.node.size > ggtt->uc_fw.size);


 drm_clflush_sg(dummy.pages);

 ggtt->vm.insert_entries(&ggtt->vm, &dummy, I915_CACHE_NONE, 0);
}
