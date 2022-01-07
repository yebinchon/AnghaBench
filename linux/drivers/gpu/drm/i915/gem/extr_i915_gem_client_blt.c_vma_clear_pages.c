
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int * pages; } ;


 int GEM_BUG_ON (int) ;

__attribute__((used)) static void vma_clear_pages(struct i915_vma *vma)
{
 GEM_BUG_ON(!vma->pages);
 vma->pages = ((void*)0);
}
