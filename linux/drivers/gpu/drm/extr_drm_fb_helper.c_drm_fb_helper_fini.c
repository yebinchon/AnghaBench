
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
struct fb_info {TYPE_2__ cmap; } ;
struct TYPE_6__ {int funcs; } ;
struct drm_fb_helper {TYPE_3__ client; int lock; int kernel_fb_list; struct fb_info* fbdev; int dirty_work; int resume_work; TYPE_1__* dev; } ;
struct TYPE_4__ {int * fb_helper; } ;


 int cancel_work_sync (int *) ;
 int drm_client_release (TYPE_3__*) ;
 int drm_fbdev_emulation ;
 int fb_dealloc_cmap (TYPE_2__*) ;
 int framebuffer_release (struct fb_info*) ;
 int kernel_fb_helper_list ;
 int kernel_fb_helper_lock ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysrq_drm_fb_helper_restore_op ;
 int unregister_sysrq_key (char,int *) ;

void drm_fb_helper_fini(struct drm_fb_helper *fb_helper)
{
 struct fb_info *info;

 if (!fb_helper)
  return;

 fb_helper->dev->fb_helper = ((void*)0);

 if (!drm_fbdev_emulation)
  return;

 cancel_work_sync(&fb_helper->resume_work);
 cancel_work_sync(&fb_helper->dirty_work);

 info = fb_helper->fbdev;
 if (info) {
  if (info->cmap.len)
   fb_dealloc_cmap(&info->cmap);
  framebuffer_release(info);
 }
 fb_helper->fbdev = ((void*)0);

 mutex_lock(&kernel_fb_helper_lock);
 if (!list_empty(&fb_helper->kernel_fb_list)) {
  list_del(&fb_helper->kernel_fb_list);
  if (list_empty(&kernel_fb_helper_list))
   unregister_sysrq_key('v', &sysrq_drm_fb_helper_restore_op);
 }
 mutex_unlock(&kernel_fb_helper_lock);

 mutex_destroy(&fb_helper->lock);

 if (!fb_helper->client.funcs)
  drm_client_release(&fb_helper->client);
}
