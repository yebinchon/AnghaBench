
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_cursor2 {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_mode_cursor_common (struct drm_device*,struct drm_mode_cursor2*,struct drm_file*) ;

int drm_mode_cursor2_ioctl(struct drm_device *dev,
      void *data, struct drm_file *file_priv)
{
 struct drm_mode_cursor2 *req = data;

 return drm_mode_cursor_common(dev, req, file_priv);
}
