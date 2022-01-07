
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {scalar_t__ fbdev; } ;
struct drm_client_dev {int dummy; } ;


 struct drm_fb_helper* drm_fb_helper_from_client (struct drm_client_dev*) ;
 int drm_fb_helper_unregister_fbi (struct drm_fb_helper*) ;
 int drm_fbdev_release (struct drm_fb_helper*) ;

__attribute__((used)) static void drm_fbdev_client_unregister(struct drm_client_dev *client)
{
 struct drm_fb_helper *fb_helper = drm_fb_helper_from_client(client);

 if (fb_helper->fbdev)

  drm_fb_helper_unregister_fbi(fb_helper);
 else
  drm_fbdev_release(fb_helper);
}
