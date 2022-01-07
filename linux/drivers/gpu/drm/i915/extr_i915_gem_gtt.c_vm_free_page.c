
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int lock; int pvec; } ;
struct i915_address_space {TYPE_1__ free_pages; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ PAGEVEC_SIZE ;
 int might_sleep () ;
 int pagevec_add (int *,struct page*) ;
 scalar_t__ pagevec_count (int *) ;
 int pagevec_space (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vm_free_pages_release (struct i915_address_space*,int) ;

__attribute__((used)) static void vm_free_page(struct i915_address_space *vm, struct page *page)
{







 might_sleep();
 spin_lock(&vm->free_pages.lock);
 while (!pagevec_space(&vm->free_pages.pvec))
  vm_free_pages_release(vm, 0);
 GEM_BUG_ON(pagevec_count(&vm->free_pages.pvec) >= PAGEVEC_SIZE);
 pagevec_add(&vm->free_pages.pvec, page);
 spin_unlock(&vm->free_pages.lock);
}
