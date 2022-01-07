
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int
amdgpufb_release(struct fb_info *info, int user)
{
 struct drm_fb_helper *fb_helper = info->par;

 pm_runtime_mark_last_busy(fb_helper->dev->dev);
 pm_runtime_put_autosuspend(fb_helper->dev->dev);
 return 0;
}
