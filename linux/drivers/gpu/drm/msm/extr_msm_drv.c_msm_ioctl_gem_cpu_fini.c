
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_msm_gem_cpu_fini {int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int msm_gem_cpu_fini (struct drm_gem_object*) ;

__attribute__((used)) static int msm_ioctl_gem_cpu_fini(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct drm_msm_gem_cpu_fini *args = data;
 struct drm_gem_object *obj;
 int ret;

 obj = drm_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;

 ret = msm_gem_cpu_fini(obj);

 drm_gem_object_put_unlocked(obj);

 return ret;
}
