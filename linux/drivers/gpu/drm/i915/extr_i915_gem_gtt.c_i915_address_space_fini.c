
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int pvec; } ;
struct i915_address_space {int mutex; int mm; TYPE_1__ free_pages; } ;


 int GEM_BUG_ON (scalar_t__) ;
 int drm_mm_takedown (int *) ;
 int mutex_destroy (int *) ;
 scalar_t__ pagevec_count (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vm_free_pages_release (struct i915_address_space*,int) ;

__attribute__((used)) static void i915_address_space_fini(struct i915_address_space *vm)
{
 spin_lock(&vm->free_pages.lock);
 if (pagevec_count(&vm->free_pages.pvec))
  vm_free_pages_release(vm, 1);
 GEM_BUG_ON(pagevec_count(&vm->free_pages.pvec));
 spin_unlock(&vm->free_pages.lock);

 drm_mm_takedown(&vm->mm);

 mutex_destroy(&vm->mutex);
}
