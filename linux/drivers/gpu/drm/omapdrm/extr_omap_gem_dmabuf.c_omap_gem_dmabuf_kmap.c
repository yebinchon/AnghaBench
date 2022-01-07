
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 void* kmap (struct page*) ;
 int omap_gem_cpu_sync_page (struct drm_gem_object*,unsigned long) ;
 int omap_gem_get_pages (struct drm_gem_object*,struct page***,int) ;

__attribute__((used)) static void *omap_gem_dmabuf_kmap(struct dma_buf *buffer,
  unsigned long page_num)
{
 struct drm_gem_object *obj = buffer->priv;
 struct page **pages;
 omap_gem_get_pages(obj, &pages, 0);
 omap_gem_cpu_sync_page(obj, page_num);
 return kmap(pages[page_num]);
}
