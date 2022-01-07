
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_gem_object*) ;
 int PTR_ERR (struct drm_gem_object*) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct drm_gem_object* msm_gem_new (struct drm_device*,int ,int ) ;
 int msm_gem_object_set_name (struct drm_gem_object*,char*,char*) ;

int msm_gem_new_handle(struct drm_device *dev, struct drm_file *file,
  uint32_t size, uint32_t flags, uint32_t *handle,
  char *name)
{
 struct drm_gem_object *obj;
 int ret;

 obj = msm_gem_new(dev, size, flags);

 if (IS_ERR(obj))
  return PTR_ERR(obj);

 if (name)
  msm_gem_object_set_name(obj, "%s", name);

 ret = drm_gem_handle_create(file, obj, handle);


 drm_gem_object_put_unlocked(obj);

 return ret;
}
