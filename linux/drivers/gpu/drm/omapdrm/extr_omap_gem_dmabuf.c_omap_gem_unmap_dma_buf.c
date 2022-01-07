
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct drm_gem_object* priv; } ;


 int kfree (struct sg_table*) ;
 int omap_gem_unpin (struct drm_gem_object*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void omap_gem_unmap_dma_buf(struct dma_buf_attachment *attachment,
  struct sg_table *sg, enum dma_data_direction dir)
{
 struct drm_gem_object *obj = attachment->dmabuf->priv;
 omap_gem_unpin(obj);
 sg_free_table(sg);
 kfree(sg);
}
