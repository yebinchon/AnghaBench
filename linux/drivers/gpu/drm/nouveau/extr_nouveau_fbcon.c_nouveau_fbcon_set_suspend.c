
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int fbcon_new_state; int fbcon_work; int fbcon; } ;
struct drm_device {int dummy; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int schedule_work (int *) ;

void
nouveau_fbcon_set_suspend(struct drm_device *dev, int state)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (!drm->fbcon)
  return;

 drm->fbcon_new_state = state;




 schedule_work(&drm->fbcon_work);
}
