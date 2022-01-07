
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_ops {int dummy; } ;
struct fb_info {struct fb_ops* fbops; void* screen_buffer; scalar_t__ fbdefio; } ;
struct drm_fb_helper {int buffer; int dev; struct fb_info* fbdev; } ;


 int drm_client_framebuffer_delete (int ) ;
 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int fb_deferred_io_cleanup (struct fb_info*) ;
 int kfree (struct fb_ops*) ;
 int vfree (void*) ;

__attribute__((used)) static void drm_fbdev_cleanup(struct drm_fb_helper *fb_helper)
{
 struct fb_info *fbi = fb_helper->fbdev;
 struct fb_ops *fbops = ((void*)0);
 void *shadow = ((void*)0);

 if (!fb_helper->dev)
  return;

 if (fbi && fbi->fbdefio) {
  fb_deferred_io_cleanup(fbi);
  shadow = fbi->screen_buffer;
  fbops = fbi->fbops;
 }

 drm_fb_helper_fini(fb_helper);

 if (shadow) {
  vfree(shadow);
  kfree(fbops);
 }

 drm_client_framebuffer_delete(fb_helper->buffer);
}
