
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int rptr; int ptr_mask; int lock; int * ring; int enabled; } ;
struct TYPE_8__ {int high_to_low; int work; } ;
struct TYPE_9__ {TYPE_1__ thermal; } ;
struct TYPE_14__ {int vblank_sync; TYPE_2__ dpm; scalar_t__ dpm_enabled; } ;
struct TYPE_11__ {int disp_int; int disp_int_cont; int disp_int_cont2; int hdmi0_status; int hdmi1_status; } ;
struct TYPE_12__ {TYPE_4__ r600; } ;
struct TYPE_13__ {TYPE_5__ stat_regs; int * pflip; int vblank_queue; int * crtc_vblank_int; } ;
struct radeon_device {TYPE_3__ ih; TYPE_7__ pm; int audio_work; int hotplug_work; TYPE_6__ irq; int ddev; int msi_enabled; scalar_t__ shutdown; } ;


 int DC_HPD1_INTERRUPT ;
 int DC_HPD2_INTERRUPT ;
 int DC_HPD3_INTERRUPT ;
 int DC_HPD4_INTERRUPT ;
 int DC_HPD5_INTERRUPT ;
 int DC_HPD6_INTERRUPT ;
 int DRM_DEBUG (char*,...) ;
 int DRM_ERROR (char*,int,int) ;
 int HDMI0_AZ_FORMAT_WTRIG ;
 int IH_RB_RPTR ;
 int IH_RB_WPTR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LB_D1_VBLANK_INTERRUPT ;
 int LB_D1_VLINE_INTERRUPT ;
 int LB_D2_VBLANK_INTERRUPT ;
 int LB_D2_VLINE_INTERRUPT ;
 int R600_RING_TYPE_DMA_INDEX ;
 int R600_RING_TYPE_UVD_INDEX ;
 int RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ atomic_xchg (int *,int) ;
 int drm_handle_vblank (int ,int) ;
 int le32_to_cpu (int ) ;
 int r600_get_ih_wptr (struct radeon_device*) ;
 int r600_irq_ack (struct radeon_device*) ;
 int radeon_crtc_handle_flip (struct radeon_device*,int) ;
 int radeon_crtc_handle_vblank (struct radeon_device*,int) ;
 int radeon_fence_process (struct radeon_device*,int ) ;
 int radeon_use_pflipirq ;
 int rmb () ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;
 int wake_up (int *) ;

int r600_irq_process(struct radeon_device *rdev)
{
 u32 wptr;
 u32 rptr;
 u32 src_id, src_data;
 u32 ring_index;
 bool queue_hotplug = 0;
 bool queue_hdmi = 0;
 bool queue_thermal = 0;

 if (!rdev->ih.enabled || rdev->shutdown)
  return IRQ_NONE;


 if (!rdev->msi_enabled)
  RREG32(IH_RB_WPTR);

 wptr = r600_get_ih_wptr(rdev);

restart_ih:

 if (atomic_xchg(&rdev->ih.lock, 1))
  return IRQ_NONE;

 rptr = rdev->ih.rptr;
 DRM_DEBUG("r600_irq_process start: rptr %d, wptr %d\n", rptr, wptr);


 rmb();


 r600_irq_ack(rdev);

 while (rptr != wptr) {

  ring_index = rptr / 4;
  src_id = le32_to_cpu(rdev->ih.ring[ring_index]) & 0xff;
  src_data = le32_to_cpu(rdev->ih.ring[ring_index + 1]) & 0xfffffff;

  switch (src_id) {
  case 1:
   switch (src_data) {
   case 0:
    if (!(rdev->irq.stat_regs.r600.disp_int & LB_D1_VBLANK_INTERRUPT))
     DRM_DEBUG("IH: D1 vblank - IH event w/o asserted irq bit?\n");

    if (rdev->irq.crtc_vblank_int[0]) {
     drm_handle_vblank(rdev->ddev, 0);
     rdev->pm.vblank_sync = 1;
     wake_up(&rdev->irq.vblank_queue);
    }
    if (atomic_read(&rdev->irq.pflip[0]))
     radeon_crtc_handle_vblank(rdev, 0);
    rdev->irq.stat_regs.r600.disp_int &= ~LB_D1_VBLANK_INTERRUPT;
    DRM_DEBUG("IH: D1 vblank\n");

    break;
   case 1:
    if (!(rdev->irq.stat_regs.r600.disp_int & LB_D1_VLINE_INTERRUPT))
        DRM_DEBUG("IH: D1 vline - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int &= ~LB_D1_VLINE_INTERRUPT;
    DRM_DEBUG("IH: D1 vline\n");

    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 5:
   switch (src_data) {
   case 0:
    if (!(rdev->irq.stat_regs.r600.disp_int & LB_D2_VBLANK_INTERRUPT))
     DRM_DEBUG("IH: D2 vblank - IH event w/o asserted irq bit?\n");

    if (rdev->irq.crtc_vblank_int[1]) {
     drm_handle_vblank(rdev->ddev, 1);
     rdev->pm.vblank_sync = 1;
     wake_up(&rdev->irq.vblank_queue);
    }
    if (atomic_read(&rdev->irq.pflip[1]))
     radeon_crtc_handle_vblank(rdev, 1);
    rdev->irq.stat_regs.r600.disp_int &= ~LB_D2_VBLANK_INTERRUPT;
    DRM_DEBUG("IH: D2 vblank\n");

    break;
   case 1:
    if (!(rdev->irq.stat_regs.r600.disp_int & LB_D2_VLINE_INTERRUPT))
     DRM_DEBUG("IH: D2 vline - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int &= ~LB_D2_VLINE_INTERRUPT;
    DRM_DEBUG("IH: D2 vline\n");

    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 9:
   DRM_DEBUG("IH: D1 flip\n");
   if (radeon_use_pflipirq > 0)
    radeon_crtc_handle_flip(rdev, 0);
   break;
  case 11:
   DRM_DEBUG("IH: D2 flip\n");
   if (radeon_use_pflipirq > 0)
    radeon_crtc_handle_flip(rdev, 1);
   break;
  case 19:
   switch (src_data) {
   case 0:
    if (!(rdev->irq.stat_regs.r600.disp_int & DC_HPD1_INTERRUPT))
     DRM_DEBUG("IH: HPD1 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int &= ~DC_HPD1_INTERRUPT;
    queue_hotplug = 1;
    DRM_DEBUG("IH: HPD1\n");
    break;
   case 1:
    if (!(rdev->irq.stat_regs.r600.disp_int & DC_HPD2_INTERRUPT))
     DRM_DEBUG("IH: HPD2 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int &= ~DC_HPD2_INTERRUPT;
    queue_hotplug = 1;
    DRM_DEBUG("IH: HPD2\n");
    break;
   case 4:
    if (!(rdev->irq.stat_regs.r600.disp_int_cont & DC_HPD3_INTERRUPT))
     DRM_DEBUG("IH: HPD3 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int_cont &= ~DC_HPD3_INTERRUPT;
    queue_hotplug = 1;
    DRM_DEBUG("IH: HPD3\n");
    break;
   case 5:
    if (!(rdev->irq.stat_regs.r600.disp_int_cont & DC_HPD4_INTERRUPT))
     DRM_DEBUG("IH: HPD4 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int_cont &= ~DC_HPD4_INTERRUPT;
    queue_hotplug = 1;
    DRM_DEBUG("IH: HPD4\n");
    break;
   case 10:
    if (!(rdev->irq.stat_regs.r600.disp_int_cont2 & DC_HPD5_INTERRUPT))
     DRM_DEBUG("IH: HPD5 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int_cont2 &= ~DC_HPD5_INTERRUPT;
    queue_hotplug = 1;
    DRM_DEBUG("IH: HPD5\n");
    break;
   case 12:
    if (!(rdev->irq.stat_regs.r600.disp_int_cont2 & DC_HPD6_INTERRUPT))
     DRM_DEBUG("IH: HPD6 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.disp_int_cont2 &= ~DC_HPD6_INTERRUPT;
    queue_hotplug = 1;
    DRM_DEBUG("IH: HPD6\n");

    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 21:
   switch (src_data) {
   case 4:
    if (!(rdev->irq.stat_regs.r600.hdmi0_status & HDMI0_AZ_FORMAT_WTRIG))
     DRM_DEBUG("IH: HDMI0 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.hdmi0_status &= ~HDMI0_AZ_FORMAT_WTRIG;
    queue_hdmi = 1;
    DRM_DEBUG("IH: HDMI0\n");

    break;
   case 5:
    if (!(rdev->irq.stat_regs.r600.hdmi1_status & HDMI0_AZ_FORMAT_WTRIG))
     DRM_DEBUG("IH: HDMI1 - IH event w/o asserted irq bit?\n");

    rdev->irq.stat_regs.r600.hdmi1_status &= ~HDMI0_AZ_FORMAT_WTRIG;
    queue_hdmi = 1;
    DRM_DEBUG("IH: HDMI1\n");

    break;
   default:
    DRM_ERROR("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 124:
   DRM_DEBUG("IH: UVD int: 0x%08x\n", src_data);
   radeon_fence_process(rdev, R600_RING_TYPE_UVD_INDEX);
   break;
  case 176:
  case 177:
  case 178:
   DRM_DEBUG("IH: CP int: 0x%08x\n", src_data);
   radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
   break;
  case 181:
   DRM_DEBUG("IH: CP EOP\n");
   radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
   break;
  case 224:
   DRM_DEBUG("IH: DMA trap\n");
   radeon_fence_process(rdev, R600_RING_TYPE_DMA_INDEX);
   break;
  case 230:
   DRM_DEBUG("IH: thermal low to high\n");
   rdev->pm.dpm.thermal.high_to_low = 0;
   queue_thermal = 1;
   break;
  case 231:
   DRM_DEBUG("IH: thermal high to low\n");
   rdev->pm.dpm.thermal.high_to_low = 1;
   queue_thermal = 1;
   break;
  case 233:
   DRM_DEBUG("IH: GUI idle\n");
   break;
  default:
   DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
   break;
  }


  rptr += 16;
  rptr &= rdev->ih.ptr_mask;
  WREG32(IH_RB_RPTR, rptr);
 }
 if (queue_hotplug)
  schedule_delayed_work(&rdev->hotplug_work, 0);
 if (queue_hdmi)
  schedule_work(&rdev->audio_work);
 if (queue_thermal && rdev->pm.dpm_enabled)
  schedule_work(&rdev->pm.dpm.thermal.work);
 rdev->ih.rptr = rptr;
 atomic_set(&rdev->ih.lock, 0);


 wptr = r600_get_ih_wptr(rdev);
 if (wptr != rptr)
  goto restart_ih;

 return IRQ_HANDLED;
}
