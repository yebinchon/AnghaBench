
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_ops {int deferred_io; int delay; } ;
struct fb_info {struct fb_ops* fbops; struct fb_ops* fbdefio; } ;
struct fb_deferred_io {int deferred_io; int delay; } ;
struct drm_fb_helper {struct fb_info* fbdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_fb_helper_deferred_io ;
 int fb_deferred_io_init (struct fb_info*) ;
 int kfree (struct fb_ops*) ;
 struct fb_ops* kzalloc (int,int ) ;
 int msecs_to_jiffies (int) ;

int drm_fb_helper_defio_init(struct drm_fb_helper *fb_helper)
{
 struct fb_info *info = fb_helper->fbdev;
 struct fb_deferred_io *fbdefio;
 struct fb_ops *fbops;

 fbdefio = kzalloc(sizeof(*fbdefio), GFP_KERNEL);
 fbops = kzalloc(sizeof(*fbops), GFP_KERNEL);
 if (!fbdefio || !fbops) {
  kfree(fbdefio);
  kfree(fbops);
  return -ENOMEM;
 }

 info->fbdefio = fbdefio;
 fbdefio->delay = msecs_to_jiffies(50);
 fbdefio->deferred_io = drm_fb_helper_deferred_io;

 *fbops = *info->fbops;
 info->fbops = fbops;

 fb_deferred_io_init(info);

 return 0;
}
