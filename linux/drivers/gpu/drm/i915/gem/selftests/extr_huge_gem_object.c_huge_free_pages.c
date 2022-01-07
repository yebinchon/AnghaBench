
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct drm_i915_gem_object {unsigned long scratch; } ;


 unsigned long PAGE_SIZE ;
 int __free_page (int ) ;
 struct scatterlist* __sg_next (struct scatterlist*) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void huge_free_pages(struct drm_i915_gem_object *obj,
       struct sg_table *pages)
{
 unsigned long nreal = obj->scratch / PAGE_SIZE;
 struct scatterlist *sg;

 for (sg = pages->sgl; sg && nreal--; sg = __sg_next(sg))
  __free_page(sg_page(sg));

 sg_free_table(pages);
 kfree(pages);
}
