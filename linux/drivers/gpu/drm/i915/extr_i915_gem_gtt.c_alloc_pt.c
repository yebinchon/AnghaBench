
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_table {int used; int base; } ;
struct i915_address_space {int dummy; } ;


 int ENOMEM ;
 struct i915_page_table* ERR_PTR (int ) ;
 int I915_GFP_ALLOW_FAIL ;
 int atomic_set (int *,int ) ;
 int kfree (struct i915_page_table*) ;
 struct i915_page_table* kmalloc (int,int ) ;
 int setup_page_dma (struct i915_address_space*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct i915_page_table *alloc_pt(struct i915_address_space *vm)
{
 struct i915_page_table *pt;

 pt = kmalloc(sizeof(*pt), I915_GFP_ALLOW_FAIL);
 if (unlikely(!pt))
  return ERR_PTR(-ENOMEM);

 if (unlikely(setup_page_dma(vm, &pt->base))) {
  kfree(pt);
  return ERR_PTR(-ENOMEM);
 }

 atomic_set(&pt->used, 0);
 return pt;
}
