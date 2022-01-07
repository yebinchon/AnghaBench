
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pagevec {size_t nr; struct page** pages; } ;
struct page {int dummy; } ;
struct i915_address_space {int free_pages; TYPE_2__* i915; int pt_kmap_wc; int fault_attr; } ;
typedef int gfp_t ;
struct TYPE_3__ {int wc_stash; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;


 scalar_t__ I915_SELFTEST_ONLY (int ) ;
 int WARN_ON_ONCE (int ) ;
 int __pagevec_release (struct pagevec*) ;
 struct page* alloc_page (int ) ;
 int i915_gem_shrink_all (TYPE_2__*) ;
 int pagevec_init (struct pagevec*) ;
 scalar_t__ pagevec_space (struct pagevec*) ;
 int set_pages_array_wb (struct page**,int) ;
 int set_pages_array_wc (struct page**,size_t) ;
 int should_fail (int *,int) ;
 struct page* stash_pop_page (int *) ;
 int stash_push_pagevec (int *,struct pagevec*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *vm_alloc_page(struct i915_address_space *vm, gfp_t gfp)
{
 struct pagevec stack;
 struct page *page;

 if (I915_SELFTEST_ONLY(should_fail(&vm->fault_attr, 1)))
  i915_gem_shrink_all(vm->i915);

 page = stash_pop_page(&vm->free_pages);
 if (page)
  return page;

 if (!vm->pt_kmap_wc)
  return alloc_page(gfp);


 page = stash_pop_page(&vm->i915->mm.wc_stash);
 if (page)
  return page;
 pagevec_init(&stack);
 do {
  struct page *page;

  page = alloc_page(gfp);
  if (unlikely(!page))
   break;

  stack.pages[stack.nr++] = page;
 } while (pagevec_space(&stack));

 if (stack.nr && !set_pages_array_wc(stack.pages, stack.nr)) {
  page = stack.pages[--stack.nr];


  if (stack.nr)
   stash_push_pagevec(&vm->i915->mm.wc_stash, &stack);


  if (stack.nr)
   stash_push_pagevec(&vm->free_pages, &stack);
 }


 if (unlikely(stack.nr)) {
  WARN_ON_ONCE(set_pages_array_wb(stack.pages, stack.nr));
  __pagevec_release(&stack);
 }

 return page;
}
