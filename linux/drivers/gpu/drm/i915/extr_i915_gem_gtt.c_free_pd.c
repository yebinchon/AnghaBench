
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_dma {int dummy; } ;
struct i915_address_space {int dummy; } ;


 int cleanup_page_dma (struct i915_address_space*,struct i915_page_dma*) ;
 int kfree (struct i915_page_dma*) ;

__attribute__((used)) static void free_pd(struct i915_address_space *vm, struct i915_page_dma *pd)
{
 cleanup_page_dma(vm, pd);
 kfree(pd);
}
