
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ENOMEM ;
 int OMAP_BO_TILED ;
 int omap_gem_flags (struct drm_gem_object*) ;
 int omap_gem_get_pages (struct drm_gem_object*,struct page***,int) ;

__attribute__((used)) static int omap_gem_dmabuf_begin_cpu_access(struct dma_buf *buffer,
  enum dma_data_direction dir)
{
 struct drm_gem_object *obj = buffer->priv;
 struct page **pages;
 if (omap_gem_flags(obj) & OMAP_BO_TILED) {



  return -ENOMEM;
 }

 return omap_gem_get_pages(obj, &pages, 1);
}
