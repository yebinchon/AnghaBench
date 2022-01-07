
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_shmem_object {int pages_lock; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_shmem_purge_locked (struct drm_gem_object*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int panfrost_mmu_unmap (int ) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;
 int to_panfrost_bo (struct drm_gem_object*) ;

__attribute__((used)) static bool panfrost_gem_purge(struct drm_gem_object *obj)
{
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 if (!mutex_trylock(&shmem->pages_lock))
  return 0;

 panfrost_mmu_unmap(to_panfrost_bo(obj));
 drm_gem_shmem_purge_locked(obj);

 mutex_unlock(&shmem->pages_lock);
 return 1;
}
