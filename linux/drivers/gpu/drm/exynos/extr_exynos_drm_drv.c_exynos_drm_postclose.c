
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int * driver_priv; } ;
struct drm_device {int dummy; } ;


 int g2d_close (struct drm_device*,struct drm_file*) ;
 int kfree (int *) ;

__attribute__((used)) static void exynos_drm_postclose(struct drm_device *dev, struct drm_file *file)
{
 g2d_close(dev, file);
 kfree(file->driver_priv);
 file->driver_priv = ((void*)0);
}
