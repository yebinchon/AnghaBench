
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_gem_object_ops {int dummy; } ;
struct TYPE_5__ {int lock; int radix; } ;
struct TYPE_6__ {TYPE_2__ get_page; int madv; int link; int lock; } ;
struct TYPE_4__ {int list; int lock; } ;
struct drm_i915_gem_object {TYPE_3__ mm; struct drm_i915_gem_object_ops const* ops; int rcu; int lut_list; TYPE_1__ vma; } ;


 int GFP_KERNEL ;
 int I915_MADV_WILLNEED ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int) ;
 int __GFP_NOWARN ;
 int init_rcu_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void i915_gem_object_init(struct drm_i915_gem_object *obj,
     const struct drm_i915_gem_object_ops *ops)
{
 mutex_init(&obj->mm.lock);

 spin_lock_init(&obj->vma.lock);
 INIT_LIST_HEAD(&obj->vma.list);

 INIT_LIST_HEAD(&obj->mm.link);

 INIT_LIST_HEAD(&obj->lut_list);

 init_rcu_head(&obj->rcu);

 obj->ops = ops;

 obj->mm.madv = I915_MADV_WILLNEED;
 INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
 mutex_init(&obj->mm.get_page.lock);
}
