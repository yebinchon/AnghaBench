
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_shmem_object {int madv; int pages_lock; } ;
struct drm_gem_object {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

int drm_gem_shmem_madvise(struct drm_gem_object *obj, int madv)
{
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 mutex_lock(&shmem->pages_lock);

 if (shmem->madv >= 0)
  shmem->madv = madv;

 madv = shmem->madv;

 mutex_unlock(&shmem->pages_lock);

 return (madv >= 0);
}
