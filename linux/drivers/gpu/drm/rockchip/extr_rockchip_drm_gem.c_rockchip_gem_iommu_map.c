
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int start; } ;
struct TYPE_6__ {int size; struct drm_device* dev; } ;
struct rockchip_gem_object {int size; TYPE_3__ mm; TYPE_2__ base; TYPE_1__* sgt; int dma_addr; } ;
struct rockchip_drm_private {int mm_lock; int domain; int mm; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;
typedef int ssize_t ;
struct TYPE_5__ {int nents; int sgl; } ;


 int DRM_ERROR (char*,int,...) ;
 int ENOMEM ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 int PAGE_SIZE ;
 int drm_mm_insert_node_generic (int *,TYPE_3__*,int,int ,int ,int ) ;
 int drm_mm_remove_node (TYPE_3__*) ;
 int iommu_map_sg (int ,int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
{
 struct drm_device *drm = rk_obj->base.dev;
 struct rockchip_drm_private *private = drm->dev_private;
 int prot = IOMMU_READ | IOMMU_WRITE;
 ssize_t ret;

 mutex_lock(&private->mm_lock);
 ret = drm_mm_insert_node_generic(&private->mm, &rk_obj->mm,
      rk_obj->base.size, PAGE_SIZE,
      0, 0);
 mutex_unlock(&private->mm_lock);

 if (ret < 0) {
  DRM_ERROR("out of I/O virtual memory: %zd\n", ret);
  return ret;
 }

 rk_obj->dma_addr = rk_obj->mm.start;

 ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
      rk_obj->sgt->nents, prot);
 if (ret < rk_obj->base.size) {
  DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
     ret, rk_obj->base.size);
  ret = -ENOMEM;
  goto err_remove_node;
 }

 rk_obj->size = ret;

 return 0;

err_remove_node:
 mutex_lock(&private->mm_lock);
 drm_mm_remove_node(&rk_obj->mm);
 mutex_unlock(&private->mm_lock);

 return ret;
}
