
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_omap_gem_info {int offset; int size; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 int VERB (char*,struct drm_device*,struct drm_file*,int ) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int omap_gem_mmap_offset (struct drm_gem_object*) ;
 int omap_gem_mmap_size (struct drm_gem_object*) ;

__attribute__((used)) static int ioctl_gem_info(struct drm_device *dev, void *data,
  struct drm_file *file_priv)
{
 struct drm_omap_gem_info *args = data;
 struct drm_gem_object *obj;
 int ret = 0;

 VERB("%p:%p: handle=%d", dev, file_priv, args->handle);

 obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!obj)
  return -ENOENT;

 args->size = omap_gem_mmap_size(obj);
 args->offset = omap_gem_mmap_offset(obj);

 drm_gem_object_put_unlocked(obj);

 return ret;
}
