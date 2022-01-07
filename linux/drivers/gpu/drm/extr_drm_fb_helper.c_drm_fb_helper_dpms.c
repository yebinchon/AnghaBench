
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {int lock; int client; } ;


 int drm_client_modeset_dpms (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drm_fb_helper_dpms(struct fb_info *info, int dpms_mode)
{
 struct drm_fb_helper *fb_helper = info->par;

 mutex_lock(&fb_helper->lock);
 drm_client_modeset_dpms(&fb_helper->client, dpms_mode);
 mutex_unlock(&fb_helper->lock);
}
