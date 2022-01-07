
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_drm_private {int dma_dev; } ;
struct mtk_drm_gem_obj {int dma_attrs; int dma_addr; int cookie; scalar_t__ sg; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
struct TYPE_2__ {struct mtk_drm_private* dev_private; } ;


 int dma_free_attrs (int ,int ,int ,int ,int ) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,scalar_t__) ;
 int kfree (struct mtk_drm_gem_obj*) ;
 struct mtk_drm_gem_obj* to_mtk_gem_obj (struct drm_gem_object*) ;

void mtk_drm_gem_free_object(struct drm_gem_object *obj)
{
 struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
 struct mtk_drm_private *priv = obj->dev->dev_private;

 if (mtk_gem->sg)
  drm_prime_gem_destroy(obj, mtk_gem->sg);
 else
  dma_free_attrs(priv->dma_dev, obj->size, mtk_gem->cookie,
          mtk_gem->dma_addr, mtk_gem->dma_attrs);


 drm_gem_object_release(obj);

 kfree(mtk_gem);
}
