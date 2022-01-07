
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ user_obj; } ;
struct vmw_framebuffer_bo {TYPE_1__ base; int buffer; } ;
struct drm_framebuffer {int dummy; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int kfree (struct vmw_framebuffer_bo*) ;
 int ttm_base_object_unref (scalar_t__*) ;
 int vmw_bo_unreference (int *) ;
 struct vmw_framebuffer_bo* vmw_framebuffer_to_vfbd (struct drm_framebuffer*) ;

__attribute__((used)) static void vmw_framebuffer_bo_destroy(struct drm_framebuffer *framebuffer)
{
 struct vmw_framebuffer_bo *vfbd =
  vmw_framebuffer_to_vfbd(framebuffer);

 drm_framebuffer_cleanup(framebuffer);
 vmw_bo_unreference(&vfbd->buffer);
 if (vfbd->base.user_obj)
  ttm_base_object_unref(&vfbd->base.user_obj);

 kfree(vfbd);
}
