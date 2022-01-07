
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_lima_gem_wait {int op; int timeout_ns; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int LIMA_GEM_WAIT_READ ;
 int LIMA_GEM_WAIT_WRITE ;
 int lima_gem_wait (struct drm_file*,int ,int,int ) ;

__attribute__((used)) static int lima_ioctl_gem_wait(struct drm_device *dev, void *data, struct drm_file *file)
{
 struct drm_lima_gem_wait *args = data;

 if (args->op & ~(LIMA_GEM_WAIT_READ|LIMA_GEM_WAIT_WRITE))
  return -EINVAL;

 return lima_gem_wait(file, args->handle, args->op, args->timeout_ns);
}
