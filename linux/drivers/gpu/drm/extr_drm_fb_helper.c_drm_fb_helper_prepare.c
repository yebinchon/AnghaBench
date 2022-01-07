
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper_funcs {int dummy; } ;
struct TYPE_2__ {int y1; int x1; } ;
struct drm_fb_helper {struct drm_device* dev; struct drm_fb_helper_funcs const* funcs; int lock; TYPE_1__ dirty_clip; int dirty_work; int resume_work; int dirty_lock; int kernel_fb_list; } ;
struct drm_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int drm_fb_helper_dirty_work ;
 int drm_fb_helper_resume_worker ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void drm_fb_helper_prepare(struct drm_device *dev, struct drm_fb_helper *helper,
      const struct drm_fb_helper_funcs *funcs)
{
 INIT_LIST_HEAD(&helper->kernel_fb_list);
 spin_lock_init(&helper->dirty_lock);
 INIT_WORK(&helper->resume_work, drm_fb_helper_resume_worker);
 INIT_WORK(&helper->dirty_work, drm_fb_helper_dirty_work);
 helper->dirty_clip.x1 = helper->dirty_clip.y1 = ~0;
 mutex_init(&helper->lock);
 helper->funcs = funcs;
 helper->dev = dev;
}
