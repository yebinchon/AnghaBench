
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_rect {void* y2; void* x2; void* y1; void* x1; } ;
struct TYPE_4__ {int waitq; int lock; struct drm_rect rect; struct drm_framebuffer* fb; } ;
struct gm12u320_device {TYPE_2__ fb_update; } ;
struct drm_framebuffer {TYPE_1__* dev; } ;
struct TYPE_3__ {struct gm12u320_device* dev_private; } ;


 int drm_framebuffer_get (struct drm_framebuffer*) ;
 int drm_framebuffer_put (struct drm_framebuffer*) ;
 void* max (void*,void*) ;
 void* min (void*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void gm12u320_fb_mark_dirty(struct drm_framebuffer *fb,
       struct drm_rect *dirty)
{
 struct gm12u320_device *gm12u320 = fb->dev->dev_private;
 struct drm_framebuffer *old_fb = ((void*)0);
 bool wakeup = 0;

 mutex_lock(&gm12u320->fb_update.lock);

 if (gm12u320->fb_update.fb != fb) {
  old_fb = gm12u320->fb_update.fb;
  drm_framebuffer_get(fb);
  gm12u320->fb_update.fb = fb;
  gm12u320->fb_update.rect = *dirty;
  wakeup = 1;
 } else {
  struct drm_rect *rect = &gm12u320->fb_update.rect;

  rect->x1 = min(rect->x1, dirty->x1);
  rect->y1 = min(rect->y1, dirty->y1);
  rect->x2 = max(rect->x2, dirty->x2);
  rect->y2 = max(rect->y2, dirty->y2);
 }

 mutex_unlock(&gm12u320->fb_update.lock);

 if (wakeup)
  wake_up(&gm12u320->fb_update.waitq);

 if (old_fb)
  drm_framebuffer_put(old_fb);
}
