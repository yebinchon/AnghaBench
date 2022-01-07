
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct amdgpu_device {int pageflip_irq; int crtc_irq; } ;
struct amdgpu_crtc {int enabled; int crtc_id; } ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;




 int amdgpu_atombios_crtc_blank (struct drm_crtc*,int ) ;
 int amdgpu_atombios_crtc_enable (struct drm_crtc*,int ) ;
 unsigned int amdgpu_display_crtc_idx_to_irq_type (struct amdgpu_device*,int ) ;
 int amdgpu_irq_update (struct amdgpu_device*,int *,unsigned int) ;
 int amdgpu_pm_compute_clocks (struct amdgpu_device*) ;
 int dce_v6_0_crtc_load_lut (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v6_0_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 unsigned type;

 switch (mode) {
 case 130:
  amdgpu_crtc->enabled = 1;
  amdgpu_atombios_crtc_enable(crtc, ATOM_ENABLE);
  amdgpu_atombios_crtc_blank(crtc, ATOM_DISABLE);

  type = amdgpu_display_crtc_idx_to_irq_type(adev,
      amdgpu_crtc->crtc_id);
  amdgpu_irq_update(adev, &adev->crtc_irq, type);
  amdgpu_irq_update(adev, &adev->pageflip_irq, type);
  drm_crtc_vblank_on(crtc);
  dce_v6_0_crtc_load_lut(crtc);
  break;
 case 129:
 case 128:
 case 131:
  drm_crtc_vblank_off(crtc);
  if (amdgpu_crtc->enabled)
   amdgpu_atombios_crtc_blank(crtc, ATOM_ENABLE);
  amdgpu_atombios_crtc_enable(crtc, ATOM_DISABLE);
  amdgpu_crtc->enabled = 0;
  break;
 }

 amdgpu_pm_compute_clocks(adev);
}
