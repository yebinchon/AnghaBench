
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct dma_buf_attachment {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 int drm_gem_unpin (struct drm_gem_object*) ;

void drm_gem_map_detach(struct dma_buf *dma_buf,
   struct dma_buf_attachment *attach)
{
 struct drm_gem_object *obj = dma_buf->priv;

 drm_gem_unpin(obj);
}
