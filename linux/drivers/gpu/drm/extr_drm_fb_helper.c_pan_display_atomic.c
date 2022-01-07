
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_2__ {int yoffset; int xoffset; } ;
struct fb_info {TYPE_1__ var; struct drm_fb_helper* par; } ;
struct drm_fb_helper {int client; } ;


 int drm_client_modeset_commit_force (int *) ;
 int pan_set (struct drm_fb_helper*,int ,int ) ;

__attribute__((used)) static int pan_display_atomic(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct drm_fb_helper *fb_helper = info->par;
 int ret;

 pan_set(fb_helper, var->xoffset, var->yoffset);

 ret = drm_client_modeset_commit_force(&fb_helper->client);
 if (!ret) {
  info->var.xoffset = var->xoffset;
  info->var.yoffset = var->yoffset;
 } else
  pan_set(fb_helper, info->var.xoffset, info->var.yoffset);

 return ret;
}
