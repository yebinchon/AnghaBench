
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_fbdev {int helper; } ;
struct udl_device {struct udl_fbdev* fbdev; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_fb_helper_fini (int *) ;
 int drm_fb_helper_init (struct drm_device*,int *,int) ;
 int drm_fb_helper_initial_config (int *,int) ;
 int drm_fb_helper_prepare (struct drm_device*,int *,int *) ;
 int drm_fb_helper_single_add_all_connectors (int *) ;
 int drm_helper_disable_unused_functions (struct drm_device*) ;
 int fb_bpp ;
 int kfree (struct udl_fbdev*) ;
 struct udl_fbdev* kzalloc (int,int ) ;
 struct udl_device* to_udl (struct drm_device*) ;
 int udl_fb_helper_funcs ;

int udl_fbdev_init(struct drm_device *dev)
{
 struct udl_device *udl = to_udl(dev);
 int bpp_sel = fb_bpp;
 struct udl_fbdev *ufbdev;
 int ret;

 ufbdev = kzalloc(sizeof(struct udl_fbdev), GFP_KERNEL);
 if (!ufbdev)
  return -ENOMEM;

 udl->fbdev = ufbdev;

 drm_fb_helper_prepare(dev, &ufbdev->helper, &udl_fb_helper_funcs);

 ret = drm_fb_helper_init(dev, &ufbdev->helper, 1);
 if (ret)
  goto free;

 ret = drm_fb_helper_single_add_all_connectors(&ufbdev->helper);
 if (ret)
  goto fini;


 drm_helper_disable_unused_functions(dev);

 ret = drm_fb_helper_initial_config(&ufbdev->helper, bpp_sel);
 if (ret)
  goto fini;

 return 0;

fini:
 drm_fb_helper_fini(&ufbdev->helper);
free:
 kfree(ufbdev);
 return ret;
}
