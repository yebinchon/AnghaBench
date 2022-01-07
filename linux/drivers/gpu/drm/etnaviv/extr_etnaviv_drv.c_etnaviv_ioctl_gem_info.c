
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_etnaviv_gem_info {int offset; int handle; scalar_t__ pad; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int etnaviv_gem_mmap_offset (struct drm_gem_object*,int *) ;

__attribute__((used)) static int etnaviv_ioctl_gem_info(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct drm_etnaviv_gem_info *args = data;
 struct drm_gem_object *obj;
 int ret;

 if (args->pad)
  return -EINVAL;

 obj = drm_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;

 ret = etnaviv_gem_mmap_offset(obj, &args->offset);
 drm_gem_object_put_unlocked(obj);

 return ret;
}
