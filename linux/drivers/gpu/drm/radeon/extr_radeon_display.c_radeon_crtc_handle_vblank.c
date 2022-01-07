
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_3__* ddev; TYPE_2__ mode_info; } ;
struct TYPE_4__ {int hwmode; } ;
struct radeon_crtc {scalar_t__ flip_status; TYPE_1__ base; } ;
struct TYPE_6__ {int event_lock; } ;


 int ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int DRM_DEBUG_DRIVER (char*,scalar_t__,scalar_t__) ;
 int DRM_SCANOUTPOS_VALID ;
 int GET_DISTANCE_TO_VBLANKSTART ;
 scalar_t__ RADEON_FLIP_SUBMITTED ;
 int radeon_crtc_handle_flip (struct radeon_device*,int) ;
 int radeon_get_crtc_scanoutpos (TYPE_3__*,int,int ,int*,int*,int *,int *,int *) ;
 scalar_t__ radeon_page_flip_pending (struct radeon_device*,int) ;
 int radeon_use_pflipirq ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void radeon_crtc_handle_vblank(struct radeon_device *rdev, int crtc_id)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
 unsigned long flags;
 u32 update_pending;
 int vpos, hpos;


 if (radeon_crtc == ((void*)0))
  return;
 if ((radeon_use_pflipirq == 2) && ASIC_IS_DCE4(rdev))
  return;

 spin_lock_irqsave(&rdev->ddev->event_lock, flags);
 if (radeon_crtc->flip_status != RADEON_FLIP_SUBMITTED) {
  DRM_DEBUG_DRIVER("radeon_crtc->flip_status = %d != "
     "RADEON_FLIP_SUBMITTED(%d)\n",
     radeon_crtc->flip_status,
     RADEON_FLIP_SUBMITTED);
  spin_unlock_irqrestore(&rdev->ddev->event_lock, flags);
  return;
 }

 update_pending = radeon_page_flip_pending(rdev, crtc_id);
 if (update_pending &&
     (DRM_SCANOUTPOS_VALID &
      radeon_get_crtc_scanoutpos(rdev->ddev, crtc_id,
     GET_DISTANCE_TO_VBLANKSTART,
     &vpos, &hpos, ((void*)0), ((void*)0),
     &rdev->mode_info.crtcs[crtc_id]->base.hwmode)) &&
     ((vpos >= 0 && hpos < 0) || (hpos >= 0 && !ASIC_IS_AVIVO(rdev)))) {






  update_pending = 0;
 }
 spin_unlock_irqrestore(&rdev->ddev->event_lock, flags);
 if (!update_pending)
  radeon_crtc_handle_flip(rdev, crtc_id);
}
