
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int page_sizes; int pages; struct i915_sleeve* private; } ;
struct i915_sleeve {int page_sizes; int pages; } ;



__attribute__((used)) static int vma_set_pages(struct i915_vma *vma)
{
 struct i915_sleeve *sleeve = vma->private;

 vma->pages = sleeve->pages;
 vma->page_sizes = sleeve->page_sizes;

 return 0;
}
