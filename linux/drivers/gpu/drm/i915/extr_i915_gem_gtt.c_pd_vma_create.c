
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
struct i915_vma {int size; int fence_size; TYPE_5__* vm; int vm_link; int closed_link; int obj_link; TYPE_4__ ggtt_view; int flags; struct gen6_ppgtt* private; int * ops; int active; } ;
struct TYPE_10__ {int total; int mutex; int unbound_list; } ;
struct i915_ggtt {TYPE_5__ vm; } ;
struct TYPE_7__ {TYPE_1__* gt; struct drm_i915_private* i915; } ;
struct TYPE_8__ {TYPE_2__ vm; } ;
struct gen6_ppgtt {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_6__ {struct i915_ggtt* ggtt; } ;


 int ENOMEM ;
 struct i915_vma* ERR_PTR (int ) ;
 int GEM_BUG_ON (int) ;
 int I915_GGTT_VIEW_ROTATED ;
 int I915_GTT_PAGE_SIZE ;
 int I915_VMA_GGTT ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ALIGNED (int,int ) ;
 int i915_active_init (struct drm_i915_private*,int *,int *,int *) ;
 struct i915_vma* i915_vma_alloc () ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pd_vma_ops ;

__attribute__((used)) static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
{
 struct drm_i915_private *i915 = ppgtt->base.vm.i915;
 struct i915_ggtt *ggtt = ppgtt->base.vm.gt->ggtt;
 struct i915_vma *vma;

 GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));
 GEM_BUG_ON(size > ggtt->vm.total);

 vma = i915_vma_alloc();
 if (!vma)
  return ERR_PTR(-ENOMEM);

 i915_active_init(i915, &vma->active, ((void*)0), ((void*)0));

 vma->vm = &ggtt->vm;
 vma->ops = &pd_vma_ops;
 vma->private = ppgtt;

 vma->size = size;
 vma->fence_size = size;
 vma->flags = I915_VMA_GGTT;
 vma->ggtt_view.type = I915_GGTT_VIEW_ROTATED;

 INIT_LIST_HEAD(&vma->obj_link);
 INIT_LIST_HEAD(&vma->closed_link);

 mutex_lock(&vma->vm->mutex);
 list_add(&vma->vm_link, &vma->vm->unbound_list);
 mutex_unlock(&vma->vm->mutex);

 return vma;
}
