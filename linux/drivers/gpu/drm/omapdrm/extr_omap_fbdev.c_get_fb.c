
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct fb_info {struct drm_fb_helper* par; TYPE_1__ fix; } ;
struct drm_fb_helper {int dummy; } ;


 int MODULE_NAME ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static struct drm_fb_helper *get_fb(struct fb_info *fbi)
{
 if (!fbi || strcmp(fbi->fix.id, MODULE_NAME)) {

  return ((void*)0);
 }
 return fbi->par;
}
