
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct amdgpu_device {int crtc_irq; } ;
struct amdgpu_crtc {int enabled; int crtc_id; } ;






 unsigned int amdgpu_display_crtc_idx_to_irq_type (struct amdgpu_device*,int ) ;
 int amdgpu_irq_update (struct amdgpu_device*,int *,unsigned int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_virtual_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 unsigned type;

 if (amdgpu_sriov_vf(adev))
  return;

 switch (mode) {
 case 130:
  amdgpu_crtc->enabled = 1;

  type = amdgpu_display_crtc_idx_to_irq_type(adev,
      amdgpu_crtc->crtc_id);
  amdgpu_irq_update(adev, &adev->crtc_irq, type);
  drm_crtc_vblank_on(crtc);
  break;
 case 129:
 case 128:
 case 131:
  drm_crtc_vblank_off(crtc);
  amdgpu_crtc->enabled = 0;
  break;
 }
}
