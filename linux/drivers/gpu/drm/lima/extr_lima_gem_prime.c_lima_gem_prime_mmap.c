
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int size; } ;


 int drm_gem_mmap_obj (struct drm_gem_object*,int ,struct vm_area_struct*) ;
 int lima_set_vma_flags (struct vm_area_struct*) ;

int lima_gem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
{
 int ret;

 ret = drm_gem_mmap_obj(obj, obj->size, vma);
 if (ret)
  return ret;

 lima_set_vma_flags(vma);
 return 0;
}
