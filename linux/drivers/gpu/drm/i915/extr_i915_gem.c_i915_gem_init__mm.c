
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shrink_list; int purge_list; int free_list; int obj_lock; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int INIT_LIST_HEAD (int *) ;
 int i915_gem_init__objects (struct drm_i915_private*) ;
 int init_llist_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void i915_gem_init__mm(struct drm_i915_private *i915)
{
 spin_lock_init(&i915->mm.obj_lock);

 init_llist_head(&i915->mm.free_list);

 INIT_LIST_HEAD(&i915->mm.purge_list);
 INIT_LIST_HEAD(&i915->mm.shrink_list);

 i915_gem_init__objects(i915);
}
