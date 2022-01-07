
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_output {int vblank_hrtimer; } ;
struct drm_crtc {int dummy; } ;


 struct vkms_output* drm_crtc_to_vkms_output (struct drm_crtc*) ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void vkms_disable_vblank(struct drm_crtc *crtc)
{
 struct vkms_output *out = drm_crtc_to_vkms_output(crtc);

 hrtimer_cancel(&out->vblank_hrtimer);
}
