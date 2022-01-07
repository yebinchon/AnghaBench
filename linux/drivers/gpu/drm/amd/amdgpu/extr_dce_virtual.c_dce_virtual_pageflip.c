
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_flip_work {struct amdgpu_flip_work* shared; int old_abo; scalar_t__ event; } ;
struct TYPE_3__ {unsigned int num_crtc; struct amdgpu_crtc** crtcs; } ;
struct amdgpu_device {TYPE_2__* ddev; TYPE_1__ mode_info; } ;
struct amdgpu_crtc {scalar_t__ pflip_status; int base; struct amdgpu_flip_work* pflip_works; } ;
struct TYPE_4__ {int event_lock; } ;


 scalar_t__ AMDGPU_FLIP_NONE ;
 scalar_t__ AMDGPU_FLIP_SUBMITTED ;
 int DRM_DEBUG_DRIVER (char*,scalar_t__,scalar_t__) ;
 int DRM_ERROR (char*,unsigned int) ;
 int EINVAL ;
 int amdgpu_bo_unref (int *) ;
 int drm_crtc_send_vblank_event (int *,scalar_t__) ;
 int drm_crtc_vblank_put (int *) ;
 int kfree (struct amdgpu_flip_work*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dce_virtual_pageflip(struct amdgpu_device *adev,
    unsigned crtc_id)
{
 unsigned long flags;
 struct amdgpu_crtc *amdgpu_crtc;
 struct amdgpu_flip_work *works;

 amdgpu_crtc = adev->mode_info.crtcs[crtc_id];

 if (crtc_id >= adev->mode_info.num_crtc) {
  DRM_ERROR("invalid pageflip crtc %d\n", crtc_id);
  return -EINVAL;
 }


 if (amdgpu_crtc == ((void*)0))
  return 0;

 spin_lock_irqsave(&adev->ddev->event_lock, flags);
 works = amdgpu_crtc->pflip_works;
 if (amdgpu_crtc->pflip_status != AMDGPU_FLIP_SUBMITTED) {
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
 amdgpu_bo_unref(&works->old_abo);
 kfree(works->shared);
 kfree(works);

 return 0;
}
