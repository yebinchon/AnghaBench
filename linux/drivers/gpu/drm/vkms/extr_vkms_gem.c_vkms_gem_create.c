
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct vkms_gem_object {struct drm_gem_object gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 struct drm_gem_object* ERR_CAST (struct vkms_gem_object*) ;
 struct drm_gem_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct vkms_gem_object*) ;
 struct vkms_gem_object* __vkms_gem_create (struct drm_device*,int ) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;

struct drm_gem_object *vkms_gem_create(struct drm_device *dev,
           struct drm_file *file,
           u32 *handle,
           u64 size)
{
 struct vkms_gem_object *obj;
 int ret;

 if (!file || !dev || !handle)
  return ERR_PTR(-EINVAL);

 obj = __vkms_gem_create(dev, size);
 if (IS_ERR(obj))
  return ERR_CAST(obj);

 ret = drm_gem_handle_create(file, &obj->gem, handle);
 drm_gem_object_put_unlocked(&obj->gem);
 if (ret)
  return ERR_PTR(ret);

 return &obj->gem;
}
