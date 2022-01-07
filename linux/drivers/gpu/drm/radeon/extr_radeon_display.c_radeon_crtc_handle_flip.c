
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_flip_work {int unpin_work; int crtc_id; scalar_t__ event; } ;
struct TYPE_3__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_2__* ddev; TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ flip_status; int flip_queue; int base; struct radeon_flip_work* flip_work; } ;
struct TYPE_4__ {int event_lock; } ;


 int DRM_DEBUG_DRIVER (char*,scalar_t__,scalar_t__) ;
 scalar_t__ RADEON_FLIP_NONE ;
 scalar_t__ RADEON_FLIP_SUBMITTED ;
 int drm_crtc_send_vblank_event (int *,scalar_t__) ;
 int drm_crtc_vblank_put (int *) ;
 int queue_work (int ,int *) ;
 int radeon_irq_kms_pflip_irq_put (struct radeon_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void radeon_crtc_handle_flip(struct radeon_device *rdev, int crtc_id)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
 struct radeon_flip_work *work;
 unsigned long flags;


 if (radeon_crtc == ((void*)0))
  return;

 spin_lock_irqsave(&rdev->ddev->event_lock, flags);
 work = radeon_crtc->flip_work;
 if (radeon_crtc->flip_status != RADEON_FLIP_SUBMITTED) {
  DRM_DEBUG_DRIVER("radeon_crtc->flip_status = %d != "
     "RADEON_FLIP_SUBMITTED(%d)\n",
     radeon_crtc->flip_status,
     RADEON_FLIP_SUBMITTED);
  spin_unlock_irqrestore(&rdev->ddev->event_lock, flags);
  return;
 }


 radeon_crtc->flip_status = RADEON_FLIP_NONE;
 radeon_crtc->flip_work = ((void*)0);


 if (work->event)
  drm_crtc_send_vblank_event(&radeon_crtc->base, work->event);

 spin_unlock_irqrestore(&rdev->ddev->event_lock, flags);

 drm_crtc_vblank_put(&radeon_crtc->base);
 radeon_irq_kms_pflip_irq_put(rdev, work->crtc_id);
 queue_work(radeon_crtc->flip_queue, &work->unpin_work);
}
