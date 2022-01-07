
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_shmem_object {int pages_lock; } ;


 int drm_gem_shmem_put_pages_locked (struct drm_gem_shmem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_gem_shmem_put_pages(struct drm_gem_shmem_object *shmem)
{
 mutex_lock(&shmem->pages_lock);
 drm_gem_shmem_put_pages_locked(shmem);
 mutex_unlock(&shmem->pages_lock);
}
