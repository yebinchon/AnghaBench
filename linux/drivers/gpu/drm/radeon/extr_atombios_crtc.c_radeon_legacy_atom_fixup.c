
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int RADEON_CRTC2_H_SYNC_STRT_WID ;
 int RADEON_CRTC2_V_SYNC_STRT_WID ;
 int RADEON_DISP2_MERGE_CNTL ;
 int RADEON_DISP2_RGB_OFFSET_EN ;
 int RADEON_DISP_MERGE_CNTL ;
 int RADEON_DISP_RGB_OFFSET_EN ;
 int RADEON_FP_H2_SYNC_STRT_WID ;
 int RADEON_FP_V2_SYNC_STRT_WID ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void radeon_legacy_atom_fixup(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 u32 disp_merge_cntl;

 switch (radeon_crtc->crtc_id) {
 case 0:
  disp_merge_cntl = RREG32(RADEON_DISP_MERGE_CNTL);
  disp_merge_cntl &= ~RADEON_DISP_RGB_OFFSET_EN;
  WREG32(RADEON_DISP_MERGE_CNTL, disp_merge_cntl);
  break;
 case 1:
  disp_merge_cntl = RREG32(RADEON_DISP2_MERGE_CNTL);
  disp_merge_cntl &= ~RADEON_DISP2_RGB_OFFSET_EN;
  WREG32(RADEON_DISP2_MERGE_CNTL, disp_merge_cntl);
  WREG32(RADEON_FP_H2_SYNC_STRT_WID, RREG32(RADEON_CRTC2_H_SYNC_STRT_WID));
  WREG32(RADEON_FP_V2_SYNC_STRT_WID, RREG32(RADEON_CRTC2_V_SYNC_STRT_WID));
  break;
 }
}
