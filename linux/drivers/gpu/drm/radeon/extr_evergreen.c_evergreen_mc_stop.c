
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int num_crtc; int usec_timeout; } ;
struct evergreen_mc_save {int vga_render_control; int vga_hdp_control; int* crtc_enabled; } ;


 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 int ASIC_IS_NODCE (struct radeon_device*) ;
 scalar_t__ BIF_FB_EN ;
 int BLACKOUT_MODE_MASK ;
 scalar_t__ EVERGREEN_CRTC_BLANK_CONTROL ;
 int EVERGREEN_CRTC_BLANK_DATA_EN ;
 scalar_t__ EVERGREEN_CRTC_CONTROL ;
 int EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE ;
 int EVERGREEN_CRTC_MASTER_EN ;
 scalar_t__ EVERGREEN_CRTC_UPDATE_LOCK ;
 scalar_t__ EVERGREEN_GRPH_UPDATE ;
 int EVERGREEN_GRPH_UPDATE_LOCK ;
 scalar_t__ EVERGREEN_MASTER_UPDATE_LOCK ;
 scalar_t__ MC_SHARED_BLACKOUT_CNTL ;
 int RREG32 (scalar_t__) ;
 scalar_t__ VGA_HDP_CONTROL ;
 scalar_t__ VGA_RENDER_CONTROL ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__* crtc_offsets ;
 int evergreen_blank_dp_output (struct radeon_device*,unsigned int) ;
 scalar_t__ evergreen_is_dp_sst_stream_enabled (struct radeon_device*,int,unsigned int*) ;
 int radeon_get_vblank_counter (struct radeon_device*,int) ;
 int radeon_mc_wait_for_idle (struct radeon_device*) ;
 int radeon_wait_for_vblank (struct radeon_device*,int) ;
 int udelay (int) ;

void evergreen_mc_stop(struct radeon_device *rdev, struct evergreen_mc_save *save)
{
 u32 crtc_enabled, tmp, frame_count, blackout;
 int i, j;
 unsigned dig_fe;

 if (!ASIC_IS_NODCE(rdev)) {
  save->vga_render_control = RREG32(VGA_RENDER_CONTROL);
  save->vga_hdp_control = RREG32(VGA_HDP_CONTROL);


  WREG32(VGA_RENDER_CONTROL, 0);
 }

 for (i = 0; i < rdev->num_crtc; i++) {
  crtc_enabled = RREG32(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]) & EVERGREEN_CRTC_MASTER_EN;
  if (crtc_enabled) {
   save->crtc_enabled[i] = 1;
   if (ASIC_IS_DCE6(rdev)) {
    tmp = RREG32(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i]);
    if (!(tmp & EVERGREEN_CRTC_BLANK_DATA_EN)) {
     radeon_wait_for_vblank(rdev, i);
     WREG32(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
     tmp |= EVERGREEN_CRTC_BLANK_DATA_EN;
     WREG32(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i], tmp);
     WREG32(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
    }
   } else {
    tmp = RREG32(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]);
    if (!(tmp & EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE)) {
     radeon_wait_for_vblank(rdev, i);
     WREG32(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
     tmp |= EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE;
     WREG32(EVERGREEN_CRTC_CONTROL + crtc_offsets[i], tmp);
     WREG32(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
    }
   }

   frame_count = radeon_get_vblank_counter(rdev, i);
   for (j = 0; j < rdev->usec_timeout; j++) {
    if (radeon_get_vblank_counter(rdev, i) != frame_count)
     break;
    udelay(1);
   }







   if (ASIC_IS_DCE5(rdev) &&
       evergreen_is_dp_sst_stream_enabled(rdev, i ,&dig_fe))
    evergreen_blank_dp_output(rdev, dig_fe);


   WREG32(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
   tmp = RREG32(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]);
   tmp &= ~EVERGREEN_CRTC_MASTER_EN;
   WREG32(EVERGREEN_CRTC_CONTROL + crtc_offsets[i], tmp);
   WREG32(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
   save->crtc_enabled[i] = 0;

  } else {
   save->crtc_enabled[i] = 0;
  }
 }

 radeon_mc_wait_for_idle(rdev);

 blackout = RREG32(MC_SHARED_BLACKOUT_CNTL);
 if ((blackout & BLACKOUT_MODE_MASK) != 1) {

  WREG32(BIF_FB_EN, 0);

  blackout &= ~BLACKOUT_MODE_MASK;
  WREG32(MC_SHARED_BLACKOUT_CNTL, blackout | 1);
 }

 udelay(100);


 for (i = 0; i < rdev->num_crtc; i++) {
  if (save->crtc_enabled[i]) {
   tmp = RREG32(EVERGREEN_GRPH_UPDATE + crtc_offsets[i]);
   if (!(tmp & EVERGREEN_GRPH_UPDATE_LOCK)) {
    tmp |= EVERGREEN_GRPH_UPDATE_LOCK;
    WREG32(EVERGREEN_GRPH_UPDATE + crtc_offsets[i], tmp);
   }
   tmp = RREG32(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i]);
   if (!(tmp & 1)) {
    tmp |= 1;
    WREG32(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i], tmp);
   }
  }
 }
}
