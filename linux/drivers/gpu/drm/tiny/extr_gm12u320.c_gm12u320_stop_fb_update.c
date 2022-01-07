
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int run; int lock; int * fb; int work; int waitq; } ;
struct gm12u320_device {TYPE_1__ fb_update; } ;


 int cancel_work_sync (int *) ;
 int drm_framebuffer_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void gm12u320_stop_fb_update(struct gm12u320_device *gm12u320)
{
 mutex_lock(&gm12u320->fb_update.lock);
 gm12u320->fb_update.run = 0;
 mutex_unlock(&gm12u320->fb_update.lock);

 wake_up(&gm12u320->fb_update.waitq);
 cancel_work_sync(&gm12u320->fb_update.work);

 mutex_lock(&gm12u320->fb_update.lock);
 if (gm12u320->fb_update.fb) {
  drm_framebuffer_put(gm12u320->fb_update.fb);
  gm12u320->fb_update.fb = ((void*)0);
 }
 mutex_unlock(&gm12u320->fb_update.lock);
}
