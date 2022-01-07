
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_exynos_g2d_get_ver {int minor; int major; } ;
struct drm_device {int dummy; } ;


 int G2D_HW_MAJOR_VER ;
 int G2D_HW_MINOR_VER ;

int exynos_g2d_get_ver_ioctl(struct drm_device *drm_dev, void *data,
        struct drm_file *file)
{
 struct drm_exynos_g2d_get_ver *ver = data;

 ver->major = G2D_HW_MAJOR_VER;
 ver->minor = G2D_HW_MINOR_VER;

 return 0;
}
