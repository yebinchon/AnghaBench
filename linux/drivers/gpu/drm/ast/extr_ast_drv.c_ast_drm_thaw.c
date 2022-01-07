
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int fb_helper; } ;


 int ast_post_gpu (struct drm_device*) ;
 int drm_fb_helper_set_suspend_unlocked (int ,int) ;
 int drm_helper_resume_force_mode (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;

__attribute__((used)) static int ast_drm_thaw(struct drm_device *dev)
{
 ast_post_gpu(dev);

 drm_mode_config_reset(dev);
 drm_helper_resume_force_mode(dev);
 drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 0);

 return 0;
}
