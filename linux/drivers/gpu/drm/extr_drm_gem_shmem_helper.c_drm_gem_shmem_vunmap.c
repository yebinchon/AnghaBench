
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_shmem_object {int vmap_lock; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_shmem_vunmap_locked (struct drm_gem_shmem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

void drm_gem_shmem_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 mutex_lock(&shmem->vmap_lock);
 drm_gem_shmem_vunmap_locked(shmem);
 mutex_unlock(&shmem->vmap_lock);
}
