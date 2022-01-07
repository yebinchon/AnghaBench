
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fbdev {int hotplug_waiting; int hotplug_lock; int helper; } ;
struct nouveau_drm {TYPE_1__* dev; struct nouveau_fbdev* fbcon; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_WARN (char*,int) ;
 int EACCES ;
 int NV_DEBUG (struct nouveau_drm*,char*) ;
 int drm_fb_helper_hotplug_event (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;

void
nouveau_fbcon_output_poll_changed(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_fbdev *fbcon = drm->fbcon;
 int ret;

 if (!fbcon)
  return;

 mutex_lock(&fbcon->hotplug_lock);

 ret = pm_runtime_get(dev->dev);
 if (ret == 1 || ret == -EACCES) {
  drm_fb_helper_hotplug_event(&fbcon->helper);

  pm_runtime_mark_last_busy(dev->dev);
  pm_runtime_put_autosuspend(dev->dev);
 } else if (ret == 0) {






  NV_DEBUG(drm, "fbcon HPD event deferred until runtime resume\n");
  fbcon->hotplug_waiting = 1;
  pm_runtime_put_noidle(drm->dev->dev);
 } else {
  DRM_WARN("fbcon HPD event lost due to RPM failure: %d\n",
    ret);
 }

 mutex_unlock(&fbcon->hotplug_lock);
}
