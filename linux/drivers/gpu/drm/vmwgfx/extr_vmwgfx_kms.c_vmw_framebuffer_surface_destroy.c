
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ user_obj; } ;
struct vmw_framebuffer_surface {TYPE_1__ base; int surface; } ;
struct drm_framebuffer {int dummy; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int kfree (struct vmw_framebuffer_surface*) ;
 int ttm_base_object_unref (scalar_t__*) ;
 struct vmw_framebuffer_surface* vmw_framebuffer_to_vfbs (struct drm_framebuffer*) ;
 int vmw_surface_unreference (int *) ;

__attribute__((used)) static void vmw_framebuffer_surface_destroy(struct drm_framebuffer *framebuffer)
{
 struct vmw_framebuffer_surface *vfbs =
  vmw_framebuffer_to_vfbs(framebuffer);

 drm_framebuffer_cleanup(framebuffer);
 vmw_surface_unreference(&vfbs->surface);
 if (vfbs->base.user_obj)
  ttm_base_object_unref(&vfbs->base.user_obj);

 kfree(vfbs);
}
