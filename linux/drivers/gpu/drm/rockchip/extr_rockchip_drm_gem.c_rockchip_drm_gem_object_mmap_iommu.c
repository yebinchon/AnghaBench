
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct rockchip_gem_object {int pages; } ;
struct drm_gem_object {unsigned int size; } ;


 int ENXIO ;
 unsigned int PAGE_SHIFT ;
 struct rockchip_gem_object* to_rockchip_obj (struct drm_gem_object*) ;
 int vm_map_pages (struct vm_area_struct*,int ,unsigned int) ;
 unsigned long vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int rockchip_drm_gem_object_mmap_iommu(struct drm_gem_object *obj,
           struct vm_area_struct *vma)
{
 struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
 unsigned int count = obj->size >> PAGE_SHIFT;
 unsigned long user_count = vma_pages(vma);

 if (user_count == 0)
  return -ENXIO;

 return vm_map_pages(vma, rk_obj->pages, count);
}
