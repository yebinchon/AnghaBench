
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_agp_info {int dummy; } ;


 int drm_agp_info (struct drm_device*,struct drm_agp_info*) ;

int drm_agp_info_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_agp_info *info = data;
 int err;

 err = drm_agp_info(dev, info);
 if (err)
  return err;

 return 0;
}
