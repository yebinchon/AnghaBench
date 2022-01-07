
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_gem_object {int dev; int size; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {int flags; struct drm_gem_object* priv; int size; int * ops; } ;


 int DEFINE_DMA_BUF_EXPORT_INFO (TYPE_1__) ;
 struct dma_buf* drm_gem_dmabuf_export (int ,TYPE_1__*) ;
 TYPE_1__ exp_info ;
 int udl_dmabuf_ops ;

struct dma_buf *udl_gem_prime_export(struct drm_gem_object *obj, int flags)
{
 DEFINE_DMA_BUF_EXPORT_INFO(exp_info);

 exp_info.ops = &udl_dmabuf_ops;
 exp_info.size = obj->size;
 exp_info.flags = flags;
 exp_info.priv = obj;

 return drm_gem_dmabuf_export(obj->dev, &exp_info);
}
