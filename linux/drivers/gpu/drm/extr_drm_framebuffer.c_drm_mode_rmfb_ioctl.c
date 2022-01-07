
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_mode_rmfb (struct drm_device*,int ,struct drm_file*) ;

int drm_mode_rmfb_ioctl(struct drm_device *dev,
   void *data, struct drm_file *file_priv)
{
 uint32_t *fb_id = data;

 return drm_mode_rmfb(dev, *fb_id, file_priv);
}
