
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_shmem_object {int pages_lock; } ;


 int drm_gem_shmem_get_pages_locked (struct drm_gem_shmem_object*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem)
{
 int ret;

 ret = mutex_lock_interruptible(&shmem->pages_lock);
 if (ret)
  return ret;
 ret = drm_gem_shmem_get_pages_locked(shmem);
 mutex_unlock(&shmem->pages_lock);

 return ret;
}
