
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_iv_entry {int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_flip_work {int unpin_work; scalar_t__ event; } ;
struct TYPE_3__ {unsigned int num_crtc; struct amdgpu_crtc** crtcs; } ;
struct amdgpu_device {TYPE_2__* ddev; TYPE_1__ mode_info; } ;
struct amdgpu_crtc {scalar_t__ pflip_status; int base; struct amdgpu_flip_work* pflip_works; } ;
struct TYPE_4__ {int event_lock; } ;


 scalar_t__ AMDGPU_FLIP_NONE ;
 scalar_t__ AMDGPU_FLIP_SUBMITTED ;
 int DRM_DEBUG_DRIVER (char*,scalar_t__,scalar_t__) ;
 int DRM_ERROR (char*,unsigned int) ;
 int EINVAL ;
 int GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_CLEAR_MASK ;
 int GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_OCCURRED_MASK ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__* crtc_offsets ;
 int drm_crtc_send_vblank_event (int *,scalar_t__) ;
 int drm_crtc_vblank_put (int *) ;
 scalar_t__ mmGRPH_INTERRUPT_STATUS ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dce_v8_0_pageflip_irq(struct amdgpu_device *adev,
    struct amdgpu_irq_src *source,
    struct amdgpu_iv_entry *entry)
{
 unsigned long flags;
 unsigned crtc_id;
 struct amdgpu_crtc *amdgpu_crtc;
 struct amdgpu_flip_work *works;

 crtc_id = (entry->src_id - 8) >> 1;
 amdgpu_crtc = adev->mode_info.crtcs[crtc_id];

 if (crtc_id >= adev->mode_info.num_crtc) {
  DRM_ERROR("invalid pageflip crtc %d\n", crtc_id);
  return -EINVAL;
 }

 if (RREG32(mmGRPH_INTERRUPT_STATUS + crtc_offsets[crtc_id]) &
     GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_OCCURRED_MASK)
  WREG32(mmGRPH_INTERRUPT_STATUS + crtc_offsets[crtc_id],
         GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_CLEAR_MASK);


 if (amdgpu_crtc == ((void*)0))
  return 0;

 spin_lock_irqsave(&adev->ddev->event_lock, flags);
 works = amdgpu_crtc->pflip_works;
 if (amdgpu_crtc->pflip_status != AMDGPU_FLIP_SUBMITTED){
  DRM_DEBUG_DRIVER("amdgpu_crtc->pflip_status = %d != "
      "AMDGPU_FLIP_SUBMITTED(%d)\n",
      amdgpu_crtc->pflip_status,
      AMDGPU_FLIP_SUBMITTED);
  spin_unlock_irqrestore(&adev->ddev->event_lock, flags);
  return 0;
 }


 amdgpu_crtc->pflip_status = AMDGPU_FLIP_NONE;
 amdgpu_crtc->pflip_works = ((void*)0);


 if (works->event)
  drm_crtc_send_vblank_event(&amdgpu_crtc->base, works->event);

 spin_unlock_irqrestore(&adev->ddev->event_lock, flags);

 drm_crtc_vblank_put(&amdgpu_crtc->base);
 schedule_work(&works->unpin_work);

 return 0;
}
