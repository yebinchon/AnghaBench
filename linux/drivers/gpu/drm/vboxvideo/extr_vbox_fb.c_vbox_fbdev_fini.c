
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* fbdev; } ;
struct vbox_framebuffer {int base; int * obj; } ;
struct vbox_private {TYPE_2__ fb_helper; struct vbox_framebuffer afb; } ;
struct drm_gem_vram_object {int dummy; } ;
struct TYPE_4__ {scalar_t__ fbdefio; } ;


 int drm_fb_helper_fini (TYPE_2__*) ;
 int drm_fb_helper_unregister_fbi (TYPE_2__*) ;
 int drm_framebuffer_cleanup (int *) ;
 int drm_framebuffer_unregister_private (int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 int drm_gem_vram_kunmap (struct drm_gem_vram_object*) ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (int *) ;
 int drm_gem_vram_unpin (struct drm_gem_vram_object*) ;
 int fb_deferred_io_cleanup (TYPE_1__*) ;

void vbox_fbdev_fini(struct vbox_private *vbox)
{
 struct vbox_framebuffer *afb = &vbox->afb;






 drm_fb_helper_unregister_fbi(&vbox->fb_helper);

 if (afb->obj) {
  struct drm_gem_vram_object *gbo = drm_gem_vram_of_gem(afb->obj);

  drm_gem_vram_kunmap(gbo);
  drm_gem_vram_unpin(gbo);

  drm_gem_object_put_unlocked(afb->obj);
  afb->obj = ((void*)0);
 }
 drm_fb_helper_fini(&vbox->fb_helper);

 drm_framebuffer_unregister_private(&afb->base);
 drm_framebuffer_cleanup(&afb->base);
}
