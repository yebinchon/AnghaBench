
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {int kvaddr; int num_pages; int pages; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int PAGE_KERNEL ;
 int VM_MAP ;
 int pgprot_writecombine (int ) ;
 int rockchip_gem_get_pages (struct rockchip_gem_object*) ;
 int rockchip_gem_iommu_map (struct rockchip_gem_object*) ;
 int rockchip_gem_iommu_unmap (struct rockchip_gem_object*) ;
 int rockchip_gem_put_pages (struct rockchip_gem_object*) ;
 int vmap (int ,int ,int ,int ) ;

__attribute__((used)) static int rockchip_gem_alloc_iommu(struct rockchip_gem_object *rk_obj,
        bool alloc_kmap)
{
 int ret;

 ret = rockchip_gem_get_pages(rk_obj);
 if (ret < 0)
  return ret;

 ret = rockchip_gem_iommu_map(rk_obj);
 if (ret < 0)
  goto err_free;

 if (alloc_kmap) {
  rk_obj->kvaddr = vmap(rk_obj->pages, rk_obj->num_pages, VM_MAP,
          pgprot_writecombine(PAGE_KERNEL));
  if (!rk_obj->kvaddr) {
   DRM_ERROR("failed to vmap() buffer\n");
   ret = -ENOMEM;
   goto err_unmap;
  }
 }

 return 0;

err_unmap:
 rockchip_gem_iommu_unmap(rk_obj);
err_free:
 rockchip_gem_put_pages(rk_obj);

 return ret;
}
