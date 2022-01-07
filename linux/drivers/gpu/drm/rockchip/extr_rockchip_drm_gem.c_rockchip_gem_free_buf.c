
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {scalar_t__ pages; } ;


 int rockchip_gem_free_dma (struct rockchip_gem_object*) ;
 int rockchip_gem_free_iommu (struct rockchip_gem_object*) ;

__attribute__((used)) static void rockchip_gem_free_buf(struct rockchip_gem_object *rk_obj)
{
 if (rk_obj->pages)
  rockchip_gem_free_iommu(rk_obj);
 else
  rockchip_gem_free_dma(rk_obj);
}
