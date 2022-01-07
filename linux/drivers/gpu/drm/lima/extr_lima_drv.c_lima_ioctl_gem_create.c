
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_lima_gem_create {scalar_t__ size; int handle; scalar_t__ flags; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int lima_gem_create_handle (struct drm_device*,struct drm_file*,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static int lima_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file)
{
 struct drm_lima_gem_create *args = data;

 if (args->pad)
  return -EINVAL;

 if (args->flags)
  return -EINVAL;

 if (args->size == 0)
  return -EINVAL;

 return lima_gem_create_handle(dev, file, args->size, args->flags, &args->handle);
}
