
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_3__ {int ** obj; } ;
struct amdgpu_framebuffer {TYPE_1__ base; } ;
struct amdgpu_fbdev {int helper; struct amdgpu_framebuffer rfb; } ;


 int amdgpufb_destroy_pinned_object (int *) ;
 int drm_fb_helper_fini (int *) ;
 int drm_fb_helper_unregister_fbi (int *) ;
 int drm_framebuffer_cleanup (TYPE_1__*) ;
 int drm_framebuffer_unregister_private (TYPE_1__*) ;

__attribute__((used)) static int amdgpu_fbdev_destroy(struct drm_device *dev, struct amdgpu_fbdev *rfbdev)
{
 struct amdgpu_framebuffer *rfb = &rfbdev->rfb;

 drm_fb_helper_unregister_fbi(&rfbdev->helper);

 if (rfb->base.obj[0]) {
  amdgpufb_destroy_pinned_object(rfb->base.obj[0]);
  rfb->base.obj[0] = ((void*)0);
  drm_framebuffer_unregister_private(&rfb->base);
  drm_framebuffer_cleanup(&rfb->base);
 }
 drm_fb_helper_fini(&rfbdev->helper);

 return 0;
}
