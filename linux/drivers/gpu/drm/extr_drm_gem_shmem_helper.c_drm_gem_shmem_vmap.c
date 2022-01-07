
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_shmem_object {int vmap_lock; } ;
struct drm_gem_object {int dummy; } ;


 void* ERR_PTR (int) ;
 void* drm_gem_shmem_vmap_locked (struct drm_gem_shmem_object*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

void *drm_gem_shmem_vmap(struct drm_gem_object *obj)
{
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
 void *vaddr;
 int ret;

 ret = mutex_lock_interruptible(&shmem->vmap_lock);
 if (ret)
  return ERR_PTR(ret);
 vaddr = drm_gem_shmem_vmap_locked(shmem);
 mutex_unlock(&shmem->vmap_lock);

 return vaddr;
}
