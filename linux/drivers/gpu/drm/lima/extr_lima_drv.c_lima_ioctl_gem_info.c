
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_lima_gem_info {int offset; int va; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int lima_gem_get_info (struct drm_file*,int ,int *,int *) ;

__attribute__((used)) static int lima_ioctl_gem_info(struct drm_device *dev, void *data, struct drm_file *file)
{
 struct drm_lima_gem_info *args = data;

 return lima_gem_get_info(file, args->handle, &args->va, &args->offset);
}
