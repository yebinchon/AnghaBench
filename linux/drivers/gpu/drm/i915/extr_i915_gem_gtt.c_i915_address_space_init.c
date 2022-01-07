
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int color; } ;
struct TYPE_4__ {TYPE_1__ head_node; } ;
struct i915_address_space {int bound_list; int unbound_list; int free_pages; TYPE_2__ mm; int total; int mutex; int i915; int rcu; int ref; } ;


 int GEM_BUG_ON (int) ;
 int I915_COLOR_UNEVICTABLE ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RCU_WORK (int *,int ) ;
 int __i915_vm_release ;
 int drm_mm_init (TYPE_2__*,int ,int ) ;
 int i915_gem_shrinker_taints_mutex (int ,int *) ;
 int kref_init (int *) ;
 int lockdep_set_subclass (int *,int) ;
 int mutex_init (int *) ;
 int stash_init (int *) ;

__attribute__((used)) static void i915_address_space_init(struct i915_address_space *vm, int subclass)
{
 kref_init(&vm->ref);
 INIT_RCU_WORK(&vm->rcu, __i915_vm_release);






 mutex_init(&vm->mutex);
 lockdep_set_subclass(&vm->mutex, subclass);
 i915_gem_shrinker_taints_mutex(vm->i915, &vm->mutex);

 GEM_BUG_ON(!vm->total);
 drm_mm_init(&vm->mm, 0, vm->total);
 vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;

 stash_init(&vm->free_pages);

 INIT_LIST_HEAD(&vm->unbound_list);
 INIT_LIST_HEAD(&vm->bound_list);
}
