
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apertures_struct {TYPE_1__* ranges; } ;
struct TYPE_2__ {int size; scalar_t__ base; } ;


 struct apertures_struct* alloc_apertures (int) ;
 int drm_fb_helper_remove_conflicting_framebuffers (struct apertures_struct*,char*,int) ;
 int kfree (struct apertures_struct*) ;

__attribute__((used)) static void meson_remove_framebuffers(void)
{
 struct apertures_struct *ap;

 ap = alloc_apertures(1);
 if (!ap)
  return;


 ap->ranges[0].base = 0;
 ap->ranges[0].size = ~0;

 drm_fb_helper_remove_conflicting_framebuffers(ap, "meson-drm-fb",
            0);
 kfree(ap);
}
