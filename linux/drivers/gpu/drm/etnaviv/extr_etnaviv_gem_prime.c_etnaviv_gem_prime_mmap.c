
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct etnaviv_gem_object {TYPE_1__* ops; } ;
struct drm_gem_object {int size; } ;
struct TYPE_2__ {int (* mmap ) (struct etnaviv_gem_object*,struct vm_area_struct*) ;} ;


 int drm_gem_mmap_obj (struct drm_gem_object*,int ,struct vm_area_struct*) ;
 int stub1 (struct etnaviv_gem_object*,struct vm_area_struct*) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

int etnaviv_gem_prime_mmap(struct drm_gem_object *obj,
      struct vm_area_struct *vma)
{
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);
 int ret;

 ret = drm_gem_mmap_obj(obj, obj->size, vma);
 if (ret < 0)
  return ret;

 return etnaviv_obj->ops->mmap(etnaviv_obj, vma);
}
