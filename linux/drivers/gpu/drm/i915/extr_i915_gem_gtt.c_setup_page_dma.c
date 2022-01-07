
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_dma {int dummy; } ;
struct i915_address_space {int dummy; } ;


 int __GFP_HIGHMEM ;
 int __setup_page_dma (struct i915_address_space*,struct i915_page_dma*,int ) ;

__attribute__((used)) static int setup_page_dma(struct i915_address_space *vm,
     struct i915_page_dma *p)
{
 return __setup_page_dma(vm, p, __GFP_HIGHMEM);
}
