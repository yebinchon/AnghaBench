
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {int dma_attrs; void* kvaddr; int num_pages; scalar_t__ pages; } ;
struct drm_gem_object {int dummy; } ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 int PAGE_KERNEL ;
 int VM_MAP ;
 int pgprot_writecombine (int ) ;
 struct rockchip_gem_object* to_rockchip_obj (struct drm_gem_object*) ;
 void* vmap (scalar_t__,int ,int ,int ) ;

void *rockchip_gem_prime_vmap(struct drm_gem_object *obj)
{
 struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);

 if (rk_obj->pages)
  return vmap(rk_obj->pages, rk_obj->num_pages, VM_MAP,
       pgprot_writecombine(PAGE_KERNEL));

 if (rk_obj->dma_attrs & DMA_ATTR_NO_KERNEL_MAPPING)
  return ((void*)0);

 return rk_obj->kvaddr;
}
