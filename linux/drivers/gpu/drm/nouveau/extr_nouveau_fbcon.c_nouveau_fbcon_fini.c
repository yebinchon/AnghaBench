
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int * fbcon; } ;
struct drm_device {int dummy; } ;


 int kfree (int *) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_accel_fini (struct drm_device*) ;
 int nouveau_fbcon_destroy (struct drm_device*,int *) ;

void
nouveau_fbcon_fini(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (!drm->fbcon)
  return;

 nouveau_fbcon_accel_fini(dev);
 nouveau_fbcon_destroy(dev, drm->fbcon);
 kfree(drm->fbcon);
 drm->fbcon = ((void*)0);
}
