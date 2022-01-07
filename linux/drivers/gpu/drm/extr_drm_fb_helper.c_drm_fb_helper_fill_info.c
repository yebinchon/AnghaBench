
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct fb_info {TYPE_2__ fix; struct drm_fb_helper* par; } ;
struct drm_framebuffer {TYPE_1__* format; int * pitches; } ;
struct drm_fb_helper_surface_size {int fb_height; int fb_width; } ;
struct drm_fb_helper {TYPE_4__* dev; struct drm_framebuffer* fb; } ;
struct TYPE_8__ {TYPE_3__* driver; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_5__ {int depth; } ;


 int drm_fb_helper_fill_fix (struct fb_info*,int ,int ) ;
 int drm_fb_helper_fill_var (struct fb_info*,struct drm_fb_helper*,int ,int ) ;
 int snprintf (int ,int,char*,char*) ;

void drm_fb_helper_fill_info(struct fb_info *info,
        struct drm_fb_helper *fb_helper,
        struct drm_fb_helper_surface_size *sizes)
{
 struct drm_framebuffer *fb = fb_helper->fb;

 drm_fb_helper_fill_fix(info, fb->pitches[0], fb->format->depth);
 drm_fb_helper_fill_var(info, fb_helper,
          sizes->fb_width, sizes->fb_height);

 info->par = fb_helper;
 snprintf(info->fix.id, sizeof(info->fix.id), "%sdrmfb",
   fb_helper->dev->driver->name);

}
