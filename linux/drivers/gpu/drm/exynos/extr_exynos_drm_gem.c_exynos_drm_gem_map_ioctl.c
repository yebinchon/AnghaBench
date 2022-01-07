
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_exynos_gem_map {int offset; int handle; } ;
struct drm_device {int dummy; } ;


 int drm_gem_dumb_map_offset (struct drm_file*,struct drm_device*,int ,int *) ;

int exynos_drm_gem_map_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_exynos_gem_map *args = data;

 return drm_gem_dumb_map_offset(file_priv, dev, args->handle,
           &args->offset);
}
