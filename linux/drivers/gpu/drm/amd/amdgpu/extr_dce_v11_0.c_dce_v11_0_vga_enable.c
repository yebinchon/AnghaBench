
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {size_t crtc_id; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 int * vga_control_regs ;

__attribute__((used)) static void dce_v11_0_vga_enable(struct drm_crtc *crtc, bool enable)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 u32 vga_control;

 vga_control = RREG32(vga_control_regs[amdgpu_crtc->crtc_id]) & ~1;
 if (enable)
  WREG32(vga_control_regs[amdgpu_crtc->crtc_id], vga_control | 1);
 else
  WREG32(vga_control_regs[amdgpu_crtc->crtc_id], vga_control);
}
