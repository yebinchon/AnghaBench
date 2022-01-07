
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_radeon_gem_mmap {int addr_ptr; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int radeon_mode_dumb_mmap (struct drm_file*,struct drm_device*,int ,int *) ;

int radeon_gem_mmap_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 struct drm_radeon_gem_mmap *args = data;

 return radeon_mode_dumb_mmap(filp, dev, args->handle, &args->addr_ptr);
}
