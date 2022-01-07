
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 int kunmap (struct page*) ;
 int omap_gem_get_pages (struct drm_gem_object*,struct page***,int) ;

__attribute__((used)) static void omap_gem_dmabuf_kunmap(struct dma_buf *buffer,
  unsigned long page_num, void *addr)
{
 struct drm_gem_object *obj = buffer->priv;
 struct page **pages;
 omap_gem_get_pages(obj, &pages, 0);
 kunmap(pages[page_num]);
}
