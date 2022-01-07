
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; } ;
struct mtk_drm_private {int dma_dev; } ;
struct mtk_drm_gem_obj {int dma_attrs; int dma_addr; int cookie; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
struct TYPE_2__ {struct mtk_drm_private* dev_private; } ;


 int VM_PFNMAP ;
 int dma_mmap_attrs (int ,struct vm_area_struct*,int ,int ,int ,int ) ;
 int drm_gem_vm_close (struct vm_area_struct*) ;
 struct mtk_drm_gem_obj* to_mtk_gem_obj (struct drm_gem_object*) ;

__attribute__((used)) static int mtk_drm_gem_object_mmap(struct drm_gem_object *obj,
       struct vm_area_struct *vma)

{
 int ret;
 struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
 struct mtk_drm_private *priv = obj->dev->dev_private;





 vma->vm_flags &= ~VM_PFNMAP;

 ret = dma_mmap_attrs(priv->dma_dev, vma, mtk_gem->cookie,
        mtk_gem->dma_addr, obj->size, mtk_gem->dma_attrs);
 if (ret)
  drm_gem_vm_close(vma);

 return ret;
}
