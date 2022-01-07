
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_framebuffer {int base; scalar_t__ nvbo; int vma; } ;
struct TYPE_3__ {int fb; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct drm_device {int dummy; } ;


 int drm_fb_helper_fini (TYPE_1__*) ;
 int drm_fb_helper_unregister_fbi (TYPE_1__*) ;
 int drm_framebuffer_put (int *) ;
 int nouveau_bo_unmap (scalar_t__) ;
 int nouveau_bo_unpin (scalar_t__) ;
 struct nouveau_framebuffer* nouveau_framebuffer (int ) ;
 int nouveau_vma_del (int *) ;

__attribute__((used)) static int
nouveau_fbcon_destroy(struct drm_device *dev, struct nouveau_fbdev *fbcon)
{
 struct nouveau_framebuffer *nouveau_fb = nouveau_framebuffer(fbcon->helper.fb);

 drm_fb_helper_unregister_fbi(&fbcon->helper);
 drm_fb_helper_fini(&fbcon->helper);

 if (nouveau_fb && nouveau_fb->nvbo) {
  nouveau_vma_del(&nouveau_fb->vma);
  nouveau_bo_unmap(nouveau_fb->nvbo);
  nouveau_bo_unpin(nouveau_fb->nvbo);
  drm_framebuffer_put(&nouveau_fb->base);
 }

 return 0;
}
