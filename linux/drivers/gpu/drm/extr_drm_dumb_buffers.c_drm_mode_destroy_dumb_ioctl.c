
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_destroy_dumb {int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_mode_destroy_dumb (struct drm_device*,int ,struct drm_file*) ;

int drm_mode_destroy_dumb_ioctl(struct drm_device *dev,
    void *data, struct drm_file *file_priv)
{
 struct drm_mode_destroy_dumb *args = data;

 return drm_mode_destroy_dumb(dev, args->handle, file_priv);
}
