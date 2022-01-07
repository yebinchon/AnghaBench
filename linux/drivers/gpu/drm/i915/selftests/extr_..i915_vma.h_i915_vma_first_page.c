
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct i915_vma {TYPE_1__* pages; } ;
struct TYPE_2__ {int sgl; } ;


 int GEM_BUG_ON (int) ;
 struct page* sg_page (int ) ;

__attribute__((used)) static inline struct page *i915_vma_first_page(struct i915_vma *vma)
{
 GEM_BUG_ON(!vma->pages);
 return sg_page(vma->pages->sgl);
}
