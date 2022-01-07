
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_object_get (struct drm_gem_object*) ;

void drm_gem_vm_open(struct vm_area_struct *vma)
{
 struct drm_gem_object *obj = vma->vm_private_data;

 drm_gem_object_get(obj);
}
