
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_vma {int page_sizes; int * pages; TYPE_2__* obj; } ;
struct TYPE_3__ {int * pages; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;


 int GEM_BUG_ON (int) ;
 int kfree (int *) ;
 int memset (int *,int ,int) ;
 int sg_free_table (int *) ;

__attribute__((used)) static void clear_pages(struct i915_vma *vma)
{
 GEM_BUG_ON(!vma->pages);

 if (vma->pages != vma->obj->mm.pages) {
  sg_free_table(vma->pages);
  kfree(vma->pages);
 }
 vma->pages = ((void*)0);

 memset(&vma->page_sizes, 0, sizeof(vma->page_sizes));
}
