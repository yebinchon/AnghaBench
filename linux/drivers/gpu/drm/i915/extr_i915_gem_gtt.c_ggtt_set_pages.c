
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_vma {TYPE_2__* obj; int page_sizes; int pages; } ;
struct TYPE_3__ {int page_sizes; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;


 int GEM_BUG_ON (int ) ;
 int i915_get_ggtt_vma_pages (struct i915_vma*) ;

__attribute__((used)) static int ggtt_set_pages(struct i915_vma *vma)
{
 int ret;

 GEM_BUG_ON(vma->pages);

 ret = i915_get_ggtt_vma_pages(vma);
 if (ret)
  return ret;

 vma->page_sizes = vma->obj->mm.page_sizes;

 return 0;
}
