
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_output {int lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 struct vkms_output* drm_crtc_to_vkms_output (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;

__attribute__((used)) static void vkms_crtc_atomic_begin(struct drm_crtc *crtc,
       struct drm_crtc_state *old_crtc_state)
{
 struct vkms_output *vkms_output = drm_crtc_to_vkms_output(crtc);




 spin_lock_irq(&vkms_output->lock);
}
