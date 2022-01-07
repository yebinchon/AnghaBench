
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__** crtcs; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_display_mode {int crtc_vdisplay; int crtc_vtotal; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef int ktime_t ;
struct TYPE_3__ {scalar_t__ lb_vblank_lead_lines; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ AVIVO_D1CRTC_STATUS_POSITION ;
 scalar_t__ AVIVO_D1CRTC_V_BLANK_START_END ;
 scalar_t__ AVIVO_D2CRTC_STATUS_POSITION ;
 scalar_t__ AVIVO_D2CRTC_V_BLANK_START_END ;
 int DRM_SCANOUTPOS_ACCURATE ;
 int DRM_SCANOUTPOS_IN_VBLANK ;
 int DRM_SCANOUTPOS_VALID ;
 scalar_t__ EVERGREEN_CRTC0_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC1_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC2_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC3_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC4_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC5_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC_STATUS_POSITION ;
 scalar_t__ EVERGREEN_CRTC_V_BLANK_START_END ;
 unsigned int GET_DISTANCE_TO_VBLANKSTART ;
 scalar_t__ RADEON_CRTC2_STATUS ;
 scalar_t__ RADEON_CRTC2_VLINE_CRNT_VLINE ;
 scalar_t__ RADEON_CRTC2_V_TOTAL_DISP ;
 scalar_t__ RADEON_CRTC_STATUS ;
 scalar_t__ RADEON_CRTC_VLINE_CRNT_VLINE ;
 int RADEON_CRTC_V_DISP ;
 int RADEON_CRTC_V_DISP_SHIFT ;
 int RADEON_CRTC_V_TOTAL ;
 scalar_t__ RADEON_CRTC_V_TOTAL_DISP ;
 int RREG32 (scalar_t__) ;
 unsigned int USE_REAL_VBLANKSTART ;
 int ktime_get () ;

int radeon_get_crtc_scanoutpos(struct drm_device *dev, unsigned int pipe,
          unsigned int flags, int *vpos, int *hpos,
          ktime_t *stime, ktime_t *etime,
          const struct drm_display_mode *mode)
{
 u32 stat_crtc = 0, vbl = 0, position = 0;
 int vbl_start, vbl_end, vtotal, ret = 0;
 bool in_vbl = 1;

 struct radeon_device *rdev = dev->dev_private;




 if (stime)
  *stime = ktime_get();

 if (ASIC_IS_DCE4(rdev)) {
  if (pipe == 0) {
   vbl = RREG32(EVERGREEN_CRTC_V_BLANK_START_END +
         EVERGREEN_CRTC0_REGISTER_OFFSET);
   position = RREG32(EVERGREEN_CRTC_STATUS_POSITION +
       EVERGREEN_CRTC0_REGISTER_OFFSET);
   ret |= DRM_SCANOUTPOS_VALID;
  }
  if (pipe == 1) {
   vbl = RREG32(EVERGREEN_CRTC_V_BLANK_START_END +
         EVERGREEN_CRTC1_REGISTER_OFFSET);
   position = RREG32(EVERGREEN_CRTC_STATUS_POSITION +
       EVERGREEN_CRTC1_REGISTER_OFFSET);
   ret |= DRM_SCANOUTPOS_VALID;
  }
  if (pipe == 2) {
   vbl = RREG32(EVERGREEN_CRTC_V_BLANK_START_END +
         EVERGREEN_CRTC2_REGISTER_OFFSET);
   position = RREG32(EVERGREEN_CRTC_STATUS_POSITION +
       EVERGREEN_CRTC2_REGISTER_OFFSET);
   ret |= DRM_SCANOUTPOS_VALID;
  }
  if (pipe == 3) {
   vbl = RREG32(EVERGREEN_CRTC_V_BLANK_START_END +
         EVERGREEN_CRTC3_REGISTER_OFFSET);
   position = RREG32(EVERGREEN_CRTC_STATUS_POSITION +
       EVERGREEN_CRTC3_REGISTER_OFFSET);
   ret |= DRM_SCANOUTPOS_VALID;
  }
  if (pipe == 4) {
   vbl = RREG32(EVERGREEN_CRTC_V_BLANK_START_END +
         EVERGREEN_CRTC4_REGISTER_OFFSET);
   position = RREG32(EVERGREEN_CRTC_STATUS_POSITION +
       EVERGREEN_CRTC4_REGISTER_OFFSET);
   ret |= DRM_SCANOUTPOS_VALID;
  }
  if (pipe == 5) {
   vbl = RREG32(EVERGREEN_CRTC_V_BLANK_START_END +
         EVERGREEN_CRTC5_REGISTER_OFFSET);
   position = RREG32(EVERGREEN_CRTC_STATUS_POSITION +
       EVERGREEN_CRTC5_REGISTER_OFFSET);
   ret |= DRM_SCANOUTPOS_VALID;
  }
 } else if (ASIC_IS_AVIVO(rdev)) {
  if (pipe == 0) {
   vbl = RREG32(AVIVO_D1CRTC_V_BLANK_START_END);
   position = RREG32(AVIVO_D1CRTC_STATUS_POSITION);
   ret |= DRM_SCANOUTPOS_VALID;
  }
  if (pipe == 1) {
   vbl = RREG32(AVIVO_D2CRTC_V_BLANK_START_END);
   position = RREG32(AVIVO_D2CRTC_STATUS_POSITION);
   ret |= DRM_SCANOUTPOS_VALID;
  }
 } else {

  if (pipe == 0) {



   vbl = (RREG32(RADEON_CRTC_V_TOTAL_DISP) &
    RADEON_CRTC_V_DISP) >> RADEON_CRTC_V_DISP_SHIFT;

   position = (RREG32(RADEON_CRTC_VLINE_CRNT_VLINE) >> 16) & RADEON_CRTC_V_TOTAL;
   stat_crtc = RREG32(RADEON_CRTC_STATUS);
   if (!(stat_crtc & 1))
    in_vbl = 0;

   ret |= DRM_SCANOUTPOS_VALID;
  }
  if (pipe == 1) {
   vbl = (RREG32(RADEON_CRTC2_V_TOTAL_DISP) &
    RADEON_CRTC_V_DISP) >> RADEON_CRTC_V_DISP_SHIFT;
   position = (RREG32(RADEON_CRTC2_VLINE_CRNT_VLINE) >> 16) & RADEON_CRTC_V_TOTAL;
   stat_crtc = RREG32(RADEON_CRTC2_STATUS);
   if (!(stat_crtc & 1))
    in_vbl = 0;

   ret |= DRM_SCANOUTPOS_VALID;
  }
 }


 if (etime)
  *etime = ktime_get();




 *vpos = position & 0x1fff;
 *hpos = (position >> 16) & 0x1fff;


 if (vbl > 0) {

  ret |= DRM_SCANOUTPOS_ACCURATE;
  vbl_start = vbl & 0x1fff;
  vbl_end = (vbl >> 16) & 0x1fff;
 }
 else {

  vbl_start = mode->crtc_vdisplay;
  vbl_end = 0;
 }


 if (flags & GET_DISTANCE_TO_VBLANKSTART) {

     *hpos = *vpos - vbl_start;
 }
 if (!(flags & USE_REAL_VBLANKSTART))
  vbl_start -= rdev->mode_info.crtcs[pipe]->lb_vblank_lead_lines;


 if ((*vpos < vbl_start) && (*vpos >= vbl_end))
  in_vbl = 0;


 if (in_vbl)
     ret |= DRM_SCANOUTPOS_IN_VBLANK;


 if (flags & GET_DISTANCE_TO_VBLANKSTART) {

  *vpos -= vbl_start;
  return ret;
 }
 if (in_vbl && (*vpos >= vbl_start)) {
  vtotal = mode->crtc_vtotal;
  *vpos = *vpos - vtotal;
 }


 *vpos = *vpos - vbl_end;

 return ret;
}
