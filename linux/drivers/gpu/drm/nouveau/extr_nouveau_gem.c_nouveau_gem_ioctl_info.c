
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_nouveau_gem_info {int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int nouveau_gem_info (struct drm_file*,struct drm_gem_object*,struct drm_nouveau_gem_info*) ;

int
nouveau_gem_ioctl_info(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_nouveau_gem_info *req = data;
 struct drm_gem_object *gem;
 int ret;

 gem = drm_gem_object_lookup(file_priv, req->handle);
 if (!gem)
  return -ENOENT;

 ret = nouveau_gem_info(file_priv, gem, req);
 drm_gem_object_put_unlocked(gem);
 return ret;
}
