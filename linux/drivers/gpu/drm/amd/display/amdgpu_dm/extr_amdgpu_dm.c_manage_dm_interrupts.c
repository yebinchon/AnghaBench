
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pageflip_irq; } ;
struct amdgpu_crtc {int base; int crtc_id; } ;


 int amdgpu_display_crtc_idx_to_irq_type (struct amdgpu_device*,int ) ;
 int amdgpu_irq_get (struct amdgpu_device*,int *,int) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int) ;
 int drm_crtc_vblank_off (int *) ;
 int drm_crtc_vblank_on (int *) ;

__attribute__((used)) static void manage_dm_interrupts(struct amdgpu_device *adev,
     struct amdgpu_crtc *acrtc,
     bool enable)
{




 int irq_type =
  amdgpu_display_crtc_idx_to_irq_type(
   adev,
   acrtc->crtc_id);

 if (enable) {
  drm_crtc_vblank_on(&acrtc->base);
  amdgpu_irq_get(
   adev,
   &adev->pageflip_irq,
   irq_type);
 } else {

  amdgpu_irq_put(
   adev,
   &adev->pageflip_irq,
   irq_type);
  drm_crtc_vblank_off(&acrtc->base);
 }
}
