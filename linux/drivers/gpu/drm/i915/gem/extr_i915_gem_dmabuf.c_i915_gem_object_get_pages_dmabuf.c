
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int sgl; } ;
struct TYPE_2__ {int import_attach; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 int PTR_ERR (struct sg_table*) ;
 int __i915_gem_object_set_pages (struct drm_i915_gem_object*,struct sg_table*,unsigned int) ;
 struct sg_table* dma_buf_map_attachment (int ,int ) ;
 unsigned int i915_sg_page_sizes (int ) ;

__attribute__((used)) static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
{
 struct sg_table *pages;
 unsigned int sg_page_sizes;

 pages = dma_buf_map_attachment(obj->base.import_attach,
           DMA_BIDIRECTIONAL);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 sg_page_sizes = i915_sg_page_sizes(pages->sgl);

 __i915_gem_object_set_pages(obj, pages, sg_page_sizes);

 return 0;
}
