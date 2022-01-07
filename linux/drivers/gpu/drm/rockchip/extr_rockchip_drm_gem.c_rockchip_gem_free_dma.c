
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int size; struct drm_device* dev; } ;
struct rockchip_gem_object {int dma_attrs; int dma_addr; int kvaddr; struct drm_gem_object base; } ;
struct drm_device {int dev; } ;


 int dma_free_attrs (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void rockchip_gem_free_dma(struct rockchip_gem_object *rk_obj)
{
 struct drm_gem_object *obj = &rk_obj->base;
 struct drm_device *drm = obj->dev;

 dma_free_attrs(drm->dev, obj->size, rk_obj->kvaddr, rk_obj->dma_addr,
         rk_obj->dma_attrs);
}
