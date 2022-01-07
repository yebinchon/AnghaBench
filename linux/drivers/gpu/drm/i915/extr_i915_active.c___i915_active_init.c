
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct i915_active {int (* active ) (struct i915_active*) ;void (* retire ) (struct i915_active*) ;int mutex; int count; int preallocated_barriers; int * cache; int tree; scalar_t__ flags; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int RB_ROOT ;
 int __mutex_init (int *,char*,struct lock_class_key*) ;
 int atomic_set (int *,int ) ;
 int debug_active_init (struct i915_active*) ;
 int init_llist_head (int *) ;

void __i915_active_init(struct drm_i915_private *i915,
   struct i915_active *ref,
   int (*active)(struct i915_active *ref),
   void (*retire)(struct i915_active *ref),
   struct lock_class_key *key)
{
 debug_active_init(ref);

 ref->i915 = i915;
 ref->flags = 0;
 ref->active = active;
 ref->retire = retire;
 ref->tree = RB_ROOT;
 ref->cache = ((void*)0);
 init_llist_head(&ref->preallocated_barriers);
 atomic_set(&ref->count, 0);
 __mutex_init(&ref->mutex, "i915_active", key);
}
