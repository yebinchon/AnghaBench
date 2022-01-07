
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct drm_gem_shmem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int drm_gem_shmem_get_pages (struct drm_gem_shmem_object*) ;
 int drm_gem_vm_open (struct vm_area_struct*) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

__attribute__((used)) static void drm_gem_shmem_vm_open(struct vm_area_struct *vma)
{
 struct drm_gem_object *obj = vma->vm_private_data;
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
 int ret;

 ret = drm_gem_shmem_get_pages(shmem);
 WARN_ON_ONCE(ret != 0);

 drm_gem_vm_open(vma);
}
