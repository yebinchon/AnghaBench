
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct nouveau_fbdev {int hotplug_waiting; int hotplug_lock; TYPE_1__ helper; } ;
struct nouveau_drm {int dummy; } ;


 int NV_DEBUG (struct nouveau_drm*,char*) ;
 int drm_fb_helper_hotplug_event (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nouveau_drm* nouveau_drm (int ) ;

void
nouveau_fbcon_hotplug_resume(struct nouveau_fbdev *fbcon)
{
 struct nouveau_drm *drm;

 if (!fbcon)
  return;
 drm = nouveau_drm(fbcon->helper.dev);

 mutex_lock(&fbcon->hotplug_lock);
 if (fbcon->hotplug_waiting) {
  fbcon->hotplug_waiting = 0;

  NV_DEBUG(drm, "Handling deferred fbcon HPD events\n");
  drm_fb_helper_hotplug_event(&fbcon->helper);
 }
 mutex_unlock(&fbcon->hotplug_lock);
}
