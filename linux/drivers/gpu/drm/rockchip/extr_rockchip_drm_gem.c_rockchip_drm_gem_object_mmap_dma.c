
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct rockchip_gem_object {int dma_attrs; int dma_addr; int kvaddr; } ;
struct drm_gem_object {int size; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int dma_mmap_attrs (int ,struct vm_area_struct*,int ,int ,int ,int ) ;
 struct rockchip_gem_object* to_rockchip_obj (struct drm_gem_object*) ;

__attribute__((used)) static int rockchip_drm_gem_object_mmap_dma(struct drm_gem_object *obj,
         struct vm_area_struct *vma)
{
 struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
 struct drm_device *drm = obj->dev;

 return dma_mmap_attrs(drm->dev, vma, rk_obj->kvaddr, rk_obj->dma_addr,
         obj->size, rk_obj->dma_attrs);
}
