
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;


 int kfree (struct drm_display_mode*) ;

void drm_mode_destroy(struct drm_device *dev, struct drm_display_mode *mode)
{
 if (!mode)
  return;

 kfree(mode);
}
