
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_shmem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_shmem_put_pages (struct drm_gem_shmem_object*) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

void drm_gem_shmem_unpin(struct drm_gem_object *obj)
{
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 drm_gem_shmem_put_pages(shmem);
}
