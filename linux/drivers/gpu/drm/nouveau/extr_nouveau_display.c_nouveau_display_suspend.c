
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_display {int * suspend; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * drm_atomic_helper_suspend (struct drm_device*) ;
 scalar_t__ drm_drv_uses_atomic_modeset (struct drm_device*) ;
 struct nouveau_display* nouveau_display (struct drm_device*) ;
 int nouveau_display_fini (struct drm_device*,int,int) ;

int
nouveau_display_suspend(struct drm_device *dev, bool runtime)
{
 struct nouveau_display *disp = nouveau_display(dev);

 if (drm_drv_uses_atomic_modeset(dev)) {
  if (!runtime) {
   disp->suspend = drm_atomic_helper_suspend(dev);
   if (IS_ERR(disp->suspend)) {
    int ret = PTR_ERR(disp->suspend);
    disp->suspend = ((void*)0);
    return ret;
   }
  }
 }

 nouveau_display_fini(dev, 1, runtime);
 return 0;
}
