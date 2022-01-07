
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * pflip; int vblank_queue; scalar_t__* crtc_vblank_int; } ;
struct TYPE_3__ {int vblank_sync; } ;
struct radeon_device {int family; scalar_t__ msi_enabled; int hotplug_work; TYPE_2__ irq; TYPE_1__ pm; int ddev; scalar_t__ shutdown; } ;




 int DRM_DEBUG (char*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RADEON_AIC_CNTL ;
 int RADEON_CRTC2_VBLANK_STAT ;
 int RADEON_CRTC_VBLANK_STAT ;
 int RADEON_FP2_DETECT_STAT ;
 int RADEON_FP_DETECT_STAT ;
 int RADEON_MSI_REARM_EN ;
 int RADEON_RING_TYPE_GFX_INDEX ;
 int RADEON_SW_INT_TEST ;
 int RREG32 (int ) ;
 int RS400_MSI_REARM ;
 int RV370_MSI_REARM_EN ;
 int WREG32 (int ,int) ;
 scalar_t__ atomic_read (int *) ;
 int drm_handle_vblank (int ,int) ;
 int r100_irq_ack (struct radeon_device*) ;
 int radeon_crtc_handle_vblank (struct radeon_device*,int) ;
 int radeon_fence_process (struct radeon_device*,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int wake_up (int *) ;

int r100_irq_process(struct radeon_device *rdev)
{
 uint32_t status, msi_rearm;
 bool queue_hotplug = 0;

 status = r100_irq_ack(rdev);
 if (!status) {
  return IRQ_NONE;
 }
 if (rdev->shutdown) {
  return IRQ_NONE;
 }
 while (status) {

  if (status & RADEON_SW_INT_TEST) {
   radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
  }

  if (status & RADEON_CRTC_VBLANK_STAT) {
   if (rdev->irq.crtc_vblank_int[0]) {
    drm_handle_vblank(rdev->ddev, 0);
    rdev->pm.vblank_sync = 1;
    wake_up(&rdev->irq.vblank_queue);
   }
   if (atomic_read(&rdev->irq.pflip[0]))
    radeon_crtc_handle_vblank(rdev, 0);
  }
  if (status & RADEON_CRTC2_VBLANK_STAT) {
   if (rdev->irq.crtc_vblank_int[1]) {
    drm_handle_vblank(rdev->ddev, 1);
    rdev->pm.vblank_sync = 1;
    wake_up(&rdev->irq.vblank_queue);
   }
   if (atomic_read(&rdev->irq.pflip[1]))
    radeon_crtc_handle_vblank(rdev, 1);
  }
  if (status & RADEON_FP_DETECT_STAT) {
   queue_hotplug = 1;
   DRM_DEBUG("HPD1\n");
  }
  if (status & RADEON_FP2_DETECT_STAT) {
   queue_hotplug = 1;
   DRM_DEBUG("HPD2\n");
  }
  status = r100_irq_ack(rdev);
 }
 if (queue_hotplug)
  schedule_delayed_work(&rdev->hotplug_work, 0);
 if (rdev->msi_enabled) {
  switch (rdev->family) {
  case 129:
  case 128:
   msi_rearm = RREG32(RADEON_AIC_CNTL) & ~RS400_MSI_REARM;
   WREG32(RADEON_AIC_CNTL, msi_rearm);
   WREG32(RADEON_AIC_CNTL, msi_rearm | RS400_MSI_REARM);
   break;
  default:
   WREG32(RADEON_MSI_REARM_EN, RV370_MSI_REARM_EN);
   break;
  }
 }
 return IRQ_HANDLED;
}
