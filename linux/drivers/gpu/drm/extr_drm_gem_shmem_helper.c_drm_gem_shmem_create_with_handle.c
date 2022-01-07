
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_shmem_object {int base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_gem_shmem_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_gem_shmem_object*) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct drm_gem_shmem_object* drm_gem_shmem_create (struct drm_device*,size_t) ;

struct drm_gem_shmem_object *
drm_gem_shmem_create_with_handle(struct drm_file *file_priv,
     struct drm_device *dev, size_t size,
     uint32_t *handle)
{
 struct drm_gem_shmem_object *shmem;
 int ret;

 shmem = drm_gem_shmem_create(dev, size);
 if (IS_ERR(shmem))
  return shmem;





 ret = drm_gem_handle_create(file_priv, &shmem->base, handle);

 drm_gem_object_put_unlocked(&shmem->base);
 if (ret)
  return ERR_PTR(ret);

 return shmem;
}
