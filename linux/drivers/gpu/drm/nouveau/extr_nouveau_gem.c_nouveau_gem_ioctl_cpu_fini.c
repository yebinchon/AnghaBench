
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int dummy; } ;
struct drm_nouveau_gem_cpu_fini {int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int nouveau_bo_sync_for_device (struct nouveau_bo*) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;

int
nouveau_gem_ioctl_cpu_fini(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_nouveau_gem_cpu_fini *req = data;
 struct drm_gem_object *gem;
 struct nouveau_bo *nvbo;

 gem = drm_gem_object_lookup(file_priv, req->handle);
 if (!gem)
  return -ENOENT;
 nvbo = nouveau_gem_object(gem);

 nouveau_bo_sync_for_device(nvbo);
 drm_gem_object_put_unlocked(gem);
 return 0;
}
