
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ hdmi0_status; scalar_t__ disp_int; } ;
struct TYPE_7__ {TYPE_2__ r500; } ;
struct TYPE_8__ {TYPE_3__ stat_regs; int * pflip; int vblank_queue; scalar_t__* crtc_vblank_int; } ;
struct TYPE_5__ {int vblank_sync; } ;
struct radeon_device {int family; scalar_t__ msi_enabled; int audio_work; int hotplug_work; TYPE_4__ irq; TYPE_1__ pm; int ddev; } ;





 int DRM_DEBUG (char*) ;
 scalar_t__ G_000044_SW_INT (int) ;
 scalar_t__ G_007404_HDMI0_AZ_FORMAT_WTRIG (scalar_t__) ;
 scalar_t__ G_007EDC_DC_HOT_PLUG_DETECT1_INTERRUPT (scalar_t__) ;
 scalar_t__ G_007EDC_DC_HOT_PLUG_DETECT2_INTERRUPT (scalar_t__) ;
 scalar_t__ G_007EDC_LB_D1_VBLANK_INTERRUPT (scalar_t__) ;
 scalar_t__ G_007EDC_LB_D2_VBLANK_INTERRUPT (scalar_t__) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RADEON_BUS_CNTL ;
 int RADEON_MSI_REARM_EN ;
 int RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;
 int RS600_MSI_REARM ;
 int RV370_MSI_REARM_EN ;
 int WREG32 (int ,int) ;
 scalar_t__ atomic_read (int *) ;
 int drm_handle_vblank (int ,int) ;
 int radeon_crtc_handle_vblank (struct radeon_device*,int) ;
 int radeon_fence_process (struct radeon_device*,int ) ;
 int rs600_irq_ack (struct radeon_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;
 int wake_up (int *) ;

int rs600_irq_process(struct radeon_device *rdev)
{
 u32 status, msi_rearm;
 bool queue_hotplug = 0;
 bool queue_hdmi = 0;

 status = rs600_irq_ack(rdev);
 if (!status &&
     !rdev->irq.stat_regs.r500.disp_int &&
     !rdev->irq.stat_regs.r500.hdmi0_status) {
  return IRQ_NONE;
 }
 while (status ||
        rdev->irq.stat_regs.r500.disp_int ||
        rdev->irq.stat_regs.r500.hdmi0_status) {

  if (G_000044_SW_INT(status)) {
   radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
  }

  if (G_007EDC_LB_D1_VBLANK_INTERRUPT(rdev->irq.stat_regs.r500.disp_int)) {
   if (rdev->irq.crtc_vblank_int[0]) {
    drm_handle_vblank(rdev->ddev, 0);
    rdev->pm.vblank_sync = 1;
    wake_up(&rdev->irq.vblank_queue);
   }
   if (atomic_read(&rdev->irq.pflip[0]))
    radeon_crtc_handle_vblank(rdev, 0);
  }
  if (G_007EDC_LB_D2_VBLANK_INTERRUPT(rdev->irq.stat_regs.r500.disp_int)) {
   if (rdev->irq.crtc_vblank_int[1]) {
    drm_handle_vblank(rdev->ddev, 1);
    rdev->pm.vblank_sync = 1;
    wake_up(&rdev->irq.vblank_queue);
   }
   if (atomic_read(&rdev->irq.pflip[1]))
    radeon_crtc_handle_vblank(rdev, 1);
  }
  if (G_007EDC_DC_HOT_PLUG_DETECT1_INTERRUPT(rdev->irq.stat_regs.r500.disp_int)) {
   queue_hotplug = 1;
   DRM_DEBUG("HPD1\n");
  }
  if (G_007EDC_DC_HOT_PLUG_DETECT2_INTERRUPT(rdev->irq.stat_regs.r500.disp_int)) {
   queue_hotplug = 1;
   DRM_DEBUG("HPD2\n");
  }
  if (G_007404_HDMI0_AZ_FORMAT_WTRIG(rdev->irq.stat_regs.r500.hdmi0_status)) {
   queue_hdmi = 1;
   DRM_DEBUG("HDMI0\n");
  }
  status = rs600_irq_ack(rdev);
 }
 if (queue_hotplug)
  schedule_delayed_work(&rdev->hotplug_work, 0);
 if (queue_hdmi)
  schedule_work(&rdev->audio_work);
 if (rdev->msi_enabled) {
  switch (rdev->family) {
  case 130:
  case 129:
  case 128:
   msi_rearm = RREG32(RADEON_BUS_CNTL) & ~RS600_MSI_REARM;
   WREG32(RADEON_BUS_CNTL, msi_rearm);
   WREG32(RADEON_BUS_CNTL, msi_rearm | RS600_MSI_REARM);
   break;
  default:
   WREG32(RADEON_MSI_REARM_EN, RV370_MSI_REARM_EN);
   break;
  }
 }
 return IRQ_HANDLED;
}
