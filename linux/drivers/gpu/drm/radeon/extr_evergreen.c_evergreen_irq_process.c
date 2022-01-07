
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
struct TYPE_14__ {int high_to_low; int work; } ;
struct TYPE_12__ {TYPE_7__ thermal; } ;
struct TYPE_13__ {int vblank_sync; TYPE_5__ dpm; scalar_t__ dpm_enabled; } ;
struct TYPE_8__ {int* disp_int; int* afmt_status; } ;
struct TYPE_9__ {TYPE_1__ evergreen; } ;
struct TYPE_11__ {int * pflip; int vblank_queue; int * crtc_vblank_int; TYPE_2__ stat_regs; } ;
struct radeon_device {TYPE_3__ ih; TYPE_6__ pm; int audio_work; int hotplug_work; int dp_work; int family; int dev; TYPE_4__ irq; int ddev; scalar_t__ shutdown; } ;


 int AFMT_AZ_FORMAT_WTRIG ;
 int CAYMAN_RING_TYPE_CP1_INDEX ;
 int CAYMAN_RING_TYPE_CP2_INDEX ;
 int CAYMAN_RING_TYPE_DMA1_INDEX ;
 int CHIP_CAYMAN ;
 int DC_HPD1_INTERRUPT ;
 int DC_HPD1_RX_INTERRUPT ;
 int DRM_DEBUG (char*,...) ;
 int DRM_ERROR (char*,int,...) ;
 int IH_RB_RPTR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LB_D1_VBLANK_INTERRUPT ;
 int LB_D1_VLINE_INTERRUPT ;
 int R600_RING_TYPE_DMA_INDEX ;
 int R600_RING_TYPE_UVD_INDEX ;
 int RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;
 int SRBM_INT_ACK ;
 int SRBM_READ_ERROR ;
 int VM_CONTEXT1_CNTL2 ;
 int VM_CONTEXT1_PROTECTION_FAULT_ADDR ;
 int VM_CONTEXT1_PROTECTION_FAULT_STATUS ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ atomic_xchg (int *,int) ;
 int cayman_vm_decode_fault (struct radeon_device*,int,int) ;
 int dev_err (int ,char*,int,...) ;
 int drm_handle_vblank (int ,int) ;
 int evergreen_get_ih_wptr (struct radeon_device*) ;
 int evergreen_irq_ack (struct radeon_device*) ;
 int le32_to_cpu (int ) ;
 int radeon_crtc_handle_flip (struct radeon_device*,int) ;
 int radeon_crtc_handle_vblank (struct radeon_device*,int) ;
 int radeon_fence_process (struct radeon_device*,int ) ;
 int radeon_use_pflipirq ;
 int rmb () ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;
 int wake_up (int *) ;

int evergreen_irq_process(struct radeon_device *rdev)
{
 u32 *disp_int = rdev->irq.stat_regs.evergreen.disp_int;
 u32 *afmt_status = rdev->irq.stat_regs.evergreen.afmt_status;
 u32 crtc_idx, hpd_idx, afmt_idx;
 u32 mask;
 u32 wptr;
 u32 rptr;
 u32 src_id, src_data;
 u32 ring_index;
 bool queue_hotplug = 0;
 bool queue_hdmi = 0;
 bool queue_dp = 0;
 bool queue_thermal = 0;
 u32 status, addr;
 const char *event_name;

 if (!rdev->ih.enabled || rdev->shutdown)
  return IRQ_NONE;

 wptr = evergreen_get_ih_wptr(rdev);

restart_ih:

 if (atomic_xchg(&rdev->ih.lock, 1))
  return IRQ_NONE;

 rptr = rdev->ih.rptr;
 DRM_DEBUG("evergreen_irq_process start: rptr %d, wptr %d\n", rptr, wptr);


 rmb();


 evergreen_irq_ack(rdev);

 while (rptr != wptr) {

  ring_index = rptr / 4;
  src_id = le32_to_cpu(rdev->ih.ring[ring_index]) & 0xff;
  src_data = le32_to_cpu(rdev->ih.ring[ring_index + 1]) & 0xfffffff;

  switch (src_id) {
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
   crtc_idx = src_id - 1;

   if (src_data == 0) {
    mask = LB_D1_VBLANK_INTERRUPT;
    event_name = "vblank";

    if (rdev->irq.crtc_vblank_int[crtc_idx]) {
     drm_handle_vblank(rdev->ddev, crtc_idx);
     rdev->pm.vblank_sync = 1;
     wake_up(&rdev->irq.vblank_queue);
    }
    if (atomic_read(&rdev->irq.pflip[crtc_idx])) {
     radeon_crtc_handle_vblank(rdev,
          crtc_idx);
    }

   } else if (src_data == 1) {
    mask = LB_D1_VLINE_INTERRUPT;
    event_name = "vline";
   } else {
    DRM_DEBUG("Unhandled interrupt: %d %d\n",
       src_id, src_data);
    break;
   }

   if (!(disp_int[crtc_idx] & mask)) {
    DRM_DEBUG("IH: D%d %s - IH event w/o asserted irq bit?\n",
       crtc_idx + 1, event_name);
   }

   disp_int[crtc_idx] &= ~mask;
   DRM_DEBUG("IH: D%d %s\n", crtc_idx + 1, event_name);

   break;
  case 8:
  case 10:
  case 12:
  case 14:
  case 16:
  case 18:
   DRM_DEBUG("IH: D%d flip\n", ((src_id - 8) >> 1) + 1);
   if (radeon_use_pflipirq > 0)
    radeon_crtc_handle_flip(rdev, (src_id - 8) >> 1);
   break;
  case 42:
   if (src_data <= 5) {
    hpd_idx = src_data;
    mask = DC_HPD1_INTERRUPT;
    queue_hotplug = 1;
    event_name = "HPD";

   } else if (src_data <= 11) {
    hpd_idx = src_data - 6;
    mask = DC_HPD1_RX_INTERRUPT;
    queue_dp = 1;
    event_name = "HPD_RX";

   } else {
    DRM_DEBUG("Unhandled interrupt: %d %d\n",
       src_id, src_data);
    break;
   }

   if (!(disp_int[hpd_idx] & mask))
    DRM_DEBUG("IH: IH event w/o asserted irq bit?\n");

   disp_int[hpd_idx] &= ~mask;
   DRM_DEBUG("IH: %s%d\n", event_name, hpd_idx + 1);

   break;
  case 44:
   afmt_idx = src_data;
   if (!(afmt_status[afmt_idx] & AFMT_AZ_FORMAT_WTRIG))
    DRM_DEBUG("IH: IH event w/o asserted irq bit?\n");

   if (afmt_idx > 5) {
    DRM_ERROR("Unhandled interrupt: %d %d\n",
       src_id, src_data);
    break;
   }
   afmt_status[afmt_idx] &= ~AFMT_AZ_FORMAT_WTRIG;
   queue_hdmi = 1;
   DRM_DEBUG("IH: HDMI%d\n", afmt_idx + 1);
   break;
  case 96:
   DRM_ERROR("SRBM_READ_ERROR: 0x%x\n", RREG32(SRBM_READ_ERROR));
   WREG32(SRBM_INT_ACK, 0x1);
   break;
  case 124:
   DRM_DEBUG("IH: UVD int: 0x%08x\n", src_data);
   radeon_fence_process(rdev, R600_RING_TYPE_UVD_INDEX);
   break;
  case 146:
  case 147:
   addr = RREG32(VM_CONTEXT1_PROTECTION_FAULT_ADDR);
   status = RREG32(VM_CONTEXT1_PROTECTION_FAULT_STATUS);

   WREG32_P(VM_CONTEXT1_CNTL2, 1, ~1);
   if (addr == 0x0 && status == 0x0)
    break;
   dev_err(rdev->dev, "GPU fault detected: %d 0x%08x\n", src_id, src_data);
   dev_err(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
    addr);
   dev_err(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
    status);
   cayman_vm_decode_fault(rdev, status, addr);
   break;
  case 176:
  case 177:
  case 178:
   DRM_DEBUG("IH: CP int: 0x%08x\n", src_data);
   radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
   break;
  case 181:
   DRM_DEBUG("IH: CP EOP\n");
   if (rdev->family >= CHIP_CAYMAN) {
    switch (src_data) {
    case 0:
     radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
     break;
    case 1:
     radeon_fence_process(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
     break;
    case 2:
     radeon_fence_process(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
     break;
    }
   } else
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
  case 244:
   if (rdev->family >= CHIP_CAYMAN) {
    DRM_DEBUG("IH: DMA1 trap\n");
    radeon_fence_process(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
   }
   break;
  default:
   DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
   break;
  }


  rptr += 16;
  rptr &= rdev->ih.ptr_mask;
  WREG32(IH_RB_RPTR, rptr);
 }
 if (queue_dp)
  schedule_work(&rdev->dp_work);
 if (queue_hotplug)
  schedule_delayed_work(&rdev->hotplug_work, 0);
 if (queue_hdmi)
  schedule_work(&rdev->audio_work);
 if (queue_thermal && rdev->pm.dpm_enabled)
  schedule_work(&rdev->pm.dpm.thermal.work);
 rdev->ih.rptr = rptr;
 atomic_set(&rdev->ih.lock, 0);


 wptr = evergreen_get_ih_wptr(rdev);
 if (wptr != rptr)
  goto restart_ih;

 return IRQ_HANDLED;
}
