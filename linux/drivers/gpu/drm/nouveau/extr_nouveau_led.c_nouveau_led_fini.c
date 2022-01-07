
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {TYPE_1__* led; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int led; } ;


 int kfree (TYPE_1__*) ;
 int led_classdev_unregister (int *) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

void
nouveau_led_fini(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (drm->led) {
  led_classdev_unregister(&drm->led->led);
  kfree(drm->led);
  drm->led = ((void*)0);
 }
}
