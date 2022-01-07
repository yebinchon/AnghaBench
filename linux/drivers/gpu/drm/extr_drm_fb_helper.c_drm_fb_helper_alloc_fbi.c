
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int skip_vt_switch; int cmap; int apertures; } ;
struct drm_fb_helper {struct fb_info* fbdev; TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int ENOMEM ;
 struct fb_info* ERR_PTR (int) ;
 int alloc_apertures (int) ;
 int fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 struct fb_info* framebuffer_alloc (int ,struct device*) ;
 int framebuffer_release (struct fb_info*) ;

struct fb_info *drm_fb_helper_alloc_fbi(struct drm_fb_helper *fb_helper)
{
 struct device *dev = fb_helper->dev->dev;
 struct fb_info *info;
 int ret;

 info = framebuffer_alloc(0, dev);
 if (!info)
  return ERR_PTR(-ENOMEM);

 ret = fb_alloc_cmap(&info->cmap, 256, 0);
 if (ret)
  goto err_release;

 info->apertures = alloc_apertures(1);
 if (!info->apertures) {
  ret = -ENOMEM;
  goto err_free_cmap;
 }

 fb_helper->fbdev = info;
 info->skip_vt_switch = 1;

 return info;

err_free_cmap:
 fb_dealloc_cmap(&info->cmap);
err_release:
 framebuffer_release(info);
 return ERR_PTR(ret);
}
