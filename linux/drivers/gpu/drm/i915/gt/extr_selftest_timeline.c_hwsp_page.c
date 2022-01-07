
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct intel_timeline {TYPE_1__* hwsp_ggtt; } ;
struct TYPE_6__ {TYPE_2__* pages; } ;
struct drm_i915_gem_object {TYPE_3__ mm; } ;
struct TYPE_5__ {int sgl; } ;
struct TYPE_4__ {struct drm_i915_gem_object* obj; } ;


 int GEM_BUG_ON (int) ;
 int i915_gem_object_has_pinned_pages (struct drm_i915_gem_object*) ;
 struct page* sg_page (int ) ;

__attribute__((used)) static struct page *hwsp_page(struct intel_timeline *tl)
{
 struct drm_i915_gem_object *obj = tl->hwsp_ggtt->obj;

 GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
 return sg_page(obj->mm.pages->sgl);
}
