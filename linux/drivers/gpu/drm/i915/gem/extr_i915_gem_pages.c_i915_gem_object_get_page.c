
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 int GEM_BUG_ON (int) ;
 struct scatterlist* i915_gem_object_get_sg (struct drm_i915_gem_object*,unsigned int,unsigned int*) ;
 int i915_gem_object_has_struct_page (struct drm_i915_gem_object*) ;
 struct page* nth_page (int ,unsigned int) ;
 int sg_page (struct scatterlist*) ;

struct page *
i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
{
 struct scatterlist *sg;
 unsigned int offset;

 GEM_BUG_ON(!i915_gem_object_has_struct_page(obj));

 sg = i915_gem_object_get_sg(obj, n, &offset);
 return nth_page(sg_page(sg), offset);
}
