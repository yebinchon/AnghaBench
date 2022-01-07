
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pagevec {int nr; int pages; } ;
struct TYPE_6__ {int lock; struct pagevec pvec; } ;
struct i915_address_space {TYPE_3__ free_pages; TYPE_2__* i915; scalar_t__ pt_kmap_wc; } ;
struct TYPE_4__ {int wc_stash; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;


 int GEM_BUG_ON (int) ;
 int PAGEVEC_SIZE ;
 int __pagevec_release (struct pagevec*) ;
 int lockdep_assert_held (int *) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int set_pages_array_wb (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stash_push_pagevec (int *,struct pagevec*) ;

__attribute__((used)) static void vm_free_pages_release(struct i915_address_space *vm,
      bool immediate)
{
 struct pagevec *pvec = &vm->free_pages.pvec;
 struct pagevec stack;

 lockdep_assert_held(&vm->free_pages.lock);
 GEM_BUG_ON(!pagevec_count(pvec));

 if (vm->pt_kmap_wc) {




  stash_push_pagevec(&vm->i915->mm.wc_stash, pvec);







  if (pvec->nr <= (immediate ? 0 : PAGEVEC_SIZE - 1))
   return;






  stack = *pvec;
  pagevec_reinit(pvec);
  spin_unlock(&vm->free_pages.lock);

  pvec = &stack;
  set_pages_array_wb(pvec->pages, pvec->nr);

  spin_lock(&vm->free_pages.lock);
 }

 __pagevec_release(pvec);
}
