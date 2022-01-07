
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {int kvaddr; } ;


 int rockchip_gem_iommu_unmap (struct rockchip_gem_object*) ;
 int rockchip_gem_put_pages (struct rockchip_gem_object*) ;
 int vunmap (int ) ;

__attribute__((used)) static void rockchip_gem_free_iommu(struct rockchip_gem_object *rk_obj)
{
 vunmap(rk_obj->kvaddr);
 rockchip_gem_iommu_unmap(rk_obj);
 rockchip_gem_put_pages(rk_obj);
}
