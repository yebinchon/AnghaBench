
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_agp_release (struct drm_device*) ;

int drm_agp_release_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 return drm_agp_release(dev);
}
