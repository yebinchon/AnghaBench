
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper {TYPE_1__* fbdev; int resume_work; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ FBINFO_STATE_RUNNING ;
 int console_lock () ;
 int console_trylock () ;
 int console_unlock () ;
 int fb_set_suspend (TYPE_1__*,int) ;
 int flush_work (int *) ;
 int schedule_work (int *) ;

void drm_fb_helper_set_suspend_unlocked(struct drm_fb_helper *fb_helper,
     bool suspend)
{
 if (!fb_helper || !fb_helper->fbdev)
  return;


 flush_work(&fb_helper->resume_work);

 if (suspend) {
  if (fb_helper->fbdev->state != FBINFO_STATE_RUNNING)
   return;

  console_lock();

 } else {
  if (fb_helper->fbdev->state == FBINFO_STATE_RUNNING)
   return;

  if (!console_trylock()) {
   schedule_work(&fb_helper->resume_work);
   return;
  }
 }

 fb_set_suspend(fb_helper->fbdev, suspend);
 console_unlock();
}
