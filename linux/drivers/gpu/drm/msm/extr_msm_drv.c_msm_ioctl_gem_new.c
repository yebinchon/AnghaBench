
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_msm_gem_new {int flags; int handle; int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int MSM_BO_FLAGS ;
 int msm_gem_new_handle (struct drm_device*,struct drm_file*,int ,int,int *,int *) ;

__attribute__((used)) static int msm_ioctl_gem_new(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct drm_msm_gem_new *args = data;

 if (args->flags & ~MSM_BO_FLAGS) {
  DRM_ERROR("invalid flags: %08x\n", args->flags);
  return -EINVAL;
 }

 return msm_gem_new_handle(dev, file, args->size,
   args->flags, &args->handle, ((void*)0));
}
