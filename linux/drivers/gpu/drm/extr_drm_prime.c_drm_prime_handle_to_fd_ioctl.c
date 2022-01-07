
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_prime_handle {int flags; int fd; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* prime_handle_to_fd ) (struct drm_device*,struct drm_file*,int ,int,int *) ;} ;


 int DRM_CLOEXEC ;
 int DRM_RDWR ;
 int EINVAL ;
 int ENOSYS ;
 int stub1 (struct drm_device*,struct drm_file*,int ,int,int *) ;

int drm_prime_handle_to_fd_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 struct drm_prime_handle *args = data;

 if (!dev->driver->prime_handle_to_fd)
  return -ENOSYS;


 if (args->flags & ~(DRM_CLOEXEC | DRM_RDWR))
  return -EINVAL;

 return dev->driver->prime_handle_to_fd(dev, file_priv,
   args->handle, args->flags, &args->fd);
}
