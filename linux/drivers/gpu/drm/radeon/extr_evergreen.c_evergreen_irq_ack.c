
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* grph_int; int* disp_int; int* afmt_status; } ;
struct TYPE_5__ {TYPE_1__ evergreen; } ;
struct TYPE_6__ {TYPE_2__ stat_regs; } ;
struct radeon_device {int num_crtc; TYPE_3__ irq; } ;


 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ;
 int AFMT_AZ_FORMAT_WTRIG ;
 int AFMT_AZ_FORMAT_WTRIG_ACK ;
 scalar_t__ AFMT_STATUS ;
 int DC_HPD1_INTERRUPT ;
 int DC_HPD1_RX_INTERRUPT ;
 int DC_HPDx_INT_ACK ;
 scalar_t__ DC_HPDx_INT_CONTROL (int) ;
 int DC_HPDx_RX_INT_ACK ;
 scalar_t__ GRPH_INT_STATUS ;
 int GRPH_PFLIP_INT_CLEAR ;
 int GRPH_PFLIP_INT_OCCURRED ;
 int LB_D1_VBLANK_INTERRUPT ;
 int LB_D1_VLINE_INTERRUPT ;
 int RREG32 (scalar_t__) ;
 int VBLANK_ACK ;
 scalar_t__ VBLANK_STATUS ;
 int VLINE_ACK ;
 scalar_t__ VLINE_STATUS ;
 int WREG32 (scalar_t__,int ) ;
 int WREG32_OR (scalar_t__,int ) ;
 scalar_t__* crtc_offsets ;
 scalar_t__* evergreen_disp_int_status ;

__attribute__((used)) static void evergreen_irq_ack(struct radeon_device *rdev)
{
 int i, j;
 u32 *grph_int = rdev->irq.stat_regs.evergreen.grph_int;
 u32 *disp_int = rdev->irq.stat_regs.evergreen.disp_int;
 u32 *afmt_status = rdev->irq.stat_regs.evergreen.afmt_status;

 for (i = 0; i < 6; i++) {
  disp_int[i] = RREG32(evergreen_disp_int_status[i]);
  afmt_status[i] = RREG32(AFMT_STATUS + crtc_offsets[i]);
  if (i < rdev->num_crtc)
   grph_int[i] = RREG32(GRPH_INT_STATUS + crtc_offsets[i]);
 }


 for (i = 0; i < rdev->num_crtc; i += 2) {
  for (j = i; j < (i + 2); j++) {
   if (grph_int[j] & GRPH_PFLIP_INT_OCCURRED)
    WREG32(GRPH_INT_STATUS + crtc_offsets[j],
           GRPH_PFLIP_INT_CLEAR);
  }

  for (j = i; j < (i + 2); j++) {
   if (disp_int[j] & LB_D1_VBLANK_INTERRUPT)
    WREG32(VBLANK_STATUS + crtc_offsets[j],
           VBLANK_ACK);
   if (disp_int[j] & LB_D1_VLINE_INTERRUPT)
    WREG32(VLINE_STATUS + crtc_offsets[j],
           VLINE_ACK);
  }
 }

 for (i = 0; i < 6; i++) {
  if (disp_int[i] & DC_HPD1_INTERRUPT)
   WREG32_OR(DC_HPDx_INT_CONTROL(i), DC_HPDx_INT_ACK);
 }

 for (i = 0; i < 6; i++) {
  if (disp_int[i] & DC_HPD1_RX_INTERRUPT)
   WREG32_OR(DC_HPDx_INT_CONTROL(i), DC_HPDx_RX_INT_ACK);
 }

 for (i = 0; i < 6; i++) {
  if (afmt_status[i] & AFMT_AZ_FORMAT_WTRIG)
   WREG32_OR(AFMT_AUDIO_PACKET_CONTROL + crtc_offsets[i],
      AFMT_AZ_FORMAT_WTRIG_ACK);
 }
}
