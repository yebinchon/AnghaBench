
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_display {int * suspend; } ;
struct drm_device {int dummy; } ;


 int drm_atomic_helper_resume (struct drm_device*,int *) ;
 scalar_t__ drm_drv_uses_atomic_modeset (struct drm_device*) ;
 struct nouveau_display* nouveau_display (struct drm_device*) ;
 int nouveau_display_init (struct drm_device*,int,int) ;

void
nouveau_display_resume(struct drm_device *dev, bool runtime)
{
 struct nouveau_display *disp = nouveau_display(dev);

 nouveau_display_init(dev, 1, runtime);

 if (drm_drv_uses_atomic_modeset(dev)) {
  if (disp->suspend) {
   drm_atomic_helper_resume(dev, disp->suspend);
   disp->suspend = ((void*)0);
  }
  return;
 }
}
