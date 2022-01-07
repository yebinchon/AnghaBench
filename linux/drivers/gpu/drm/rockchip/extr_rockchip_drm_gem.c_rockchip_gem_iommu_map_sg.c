
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct rockchip_gem_object {struct sg_table* sgt; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {int dummy; } ;


 int rockchip_gem_iommu_map (struct rockchip_gem_object*) ;

__attribute__((used)) static int
rockchip_gem_iommu_map_sg(struct drm_device *drm,
     struct dma_buf_attachment *attach,
     struct sg_table *sg,
     struct rockchip_gem_object *rk_obj)
{
 rk_obj->sgt = sg;
 return rockchip_gem_iommu_map(rk_obj);
}
