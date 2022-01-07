
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_directory {int dummy; } ;
struct i915_address_space {int dummy; } ;


 int ENOMEM ;
 struct i915_page_directory* ERR_PTR (int ) ;
 struct i915_page_directory* __alloc_pd (int) ;
 int kfree (struct i915_page_directory*) ;
 int px_base (struct i915_page_directory*) ;
 int setup_page_dma (struct i915_address_space*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct i915_page_directory *alloc_pd(struct i915_address_space *vm)
{
 struct i915_page_directory *pd;

 pd = __alloc_pd(sizeof(*pd));
 if (unlikely(!pd))
  return ERR_PTR(-ENOMEM);

 if (unlikely(setup_page_dma(vm, px_base(pd)))) {
  kfree(pd);
  return ERR_PTR(-ENOMEM);
 }

 return pd;
}
