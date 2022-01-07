
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {int client; } ;


 int drm_client_release (int *) ;
 int drm_fbdev_cleanup (struct drm_fb_helper*) ;
 int kfree (struct drm_fb_helper*) ;

__attribute__((used)) static void drm_fbdev_release(struct drm_fb_helper *fb_helper)
{
 drm_fbdev_cleanup(fb_helper);
 drm_client_release(&fb_helper->client);
 kfree(fb_helper);
}
