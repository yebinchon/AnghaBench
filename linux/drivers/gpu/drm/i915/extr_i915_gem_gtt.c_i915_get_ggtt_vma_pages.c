
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int type; int remapped; int rotated; } ;
struct i915_vma {TYPE_4__ ggtt_view; int * pages; TYPE_2__* obj; } ;
struct TYPE_7__ {int * pages; } ;
struct TYPE_8__ {TYPE_1__ mm; } ;


 int DRM_ERROR (char*,int,int) ;
 int GEM_BUG_ON (int) ;




 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int i915_gem_object_has_pinned_pages (TYPE_2__*) ;
 int * intel_partial_pages (TYPE_4__*,TYPE_2__*) ;
 int * intel_remap_pages (int *,TYPE_2__*) ;
 int * intel_rotate_pages (int *,TYPE_2__*) ;

__attribute__((used)) static int
i915_get_ggtt_vma_pages(struct i915_vma *vma)
{
 int ret;






 GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));

 switch (vma->ggtt_view.type) {
 default:
  GEM_BUG_ON(vma->ggtt_view.type);

 case 131:
  vma->pages = vma->obj->mm.pages;
  return 0;

 case 128:
  vma->pages =
   intel_rotate_pages(&vma->ggtt_view.rotated, vma->obj);
  break;

 case 129:
  vma->pages =
   intel_remap_pages(&vma->ggtt_view.remapped, vma->obj);
  break;

 case 130:
  vma->pages = intel_partial_pages(&vma->ggtt_view, vma->obj);
  break;
 }

 ret = 0;
 if (IS_ERR(vma->pages)) {
  ret = PTR_ERR(vma->pages);
  vma->pages = ((void*)0);
  DRM_ERROR("Failed to get pages for VMA view type %u (%d)!\n",
     vma->ggtt_view.type, ret);
 }
 return ret;
}
