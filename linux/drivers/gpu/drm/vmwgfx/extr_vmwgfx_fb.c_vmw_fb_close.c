
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {struct fb_info* fb_info; } ;
struct vmw_fb_par {int vmalloc; int bo_mutex; int local_work; } ;
struct fb_info {struct vmw_fb_par* par; } ;


 int cancel_delayed_work_sync (int *) ;
 int fb_deferred_io_cleanup (struct fb_info*) ;
 int framebuffer_release (struct fb_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_framebuffer (struct fb_info*) ;
 int vfree (int ) ;
 int vmw_fb_kms_detach (struct vmw_fb_par*,int,int) ;

int vmw_fb_close(struct vmw_private *vmw_priv)
{
 struct fb_info *info;
 struct vmw_fb_par *par;

 if (!vmw_priv->fb_info)
  return 0;

 info = vmw_priv->fb_info;
 par = info->par;


 fb_deferred_io_cleanup(info);
 cancel_delayed_work_sync(&par->local_work);
 unregister_framebuffer(info);

 mutex_lock(&par->bo_mutex);
 (void) vmw_fb_kms_detach(par, 1, 1);
 mutex_unlock(&par->bo_mutex);

 vfree(par->vmalloc);
 framebuffer_release(info);

 return 0;
}
