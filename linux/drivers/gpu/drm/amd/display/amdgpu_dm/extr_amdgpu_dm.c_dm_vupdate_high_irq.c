
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int adjust; } ;
struct dm_crtc_state {TYPE_3__ vrr_params; scalar_t__ stream; } ;
struct common_irq_params {scalar_t__ irq_src; struct amdgpu_device* adev; } ;
struct TYPE_5__ {int dc; int freesync_module; } ;
struct amdgpu_device {scalar_t__ family; TYPE_2__* ddev; TYPE_1__ dm; } ;
struct TYPE_8__ {int state; } ;
struct amdgpu_crtc {TYPE_4__ base; int crtc_id; } ;
struct TYPE_6__ {int event_lock; } ;


 scalar_t__ AMDGPU_FAMILY_AI ;
 int DRM_DEBUG_DRIVER (char*,int ,scalar_t__) ;
 scalar_t__ IRQ_TYPE_VUPDATE ;
 scalar_t__ amdgpu_dm_vrr_active (struct dm_crtc_state*) ;
 int dc_stream_adjust_vmin_vmax (int ,scalar_t__,int *) ;
 int drm_crtc_handle_vblank (TYPE_4__*) ;
 struct amdgpu_crtc* get_crtc_by_otg_inst (struct amdgpu_device*,scalar_t__) ;
 int mod_freesync_handle_v_update (int ,scalar_t__,TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dm_crtc_state* to_dm_crtc_state (int ) ;

__attribute__((used)) static void dm_vupdate_high_irq(void *interrupt_params)
{
 struct common_irq_params *irq_params = interrupt_params;
 struct amdgpu_device *adev = irq_params->adev;
 struct amdgpu_crtc *acrtc;
 struct dm_crtc_state *acrtc_state;
 unsigned long flags;

 acrtc = get_crtc_by_otg_inst(adev, irq_params->irq_src - IRQ_TYPE_VUPDATE);

 if (acrtc) {
  acrtc_state = to_dm_crtc_state(acrtc->base.state);

  DRM_DEBUG_DRIVER("crtc:%d, vupdate-vrr:%d\n", acrtc->crtc_id,
     amdgpu_dm_vrr_active(acrtc_state));







  if (amdgpu_dm_vrr_active(acrtc_state)) {
   drm_crtc_handle_vblank(&acrtc->base);


   if (acrtc_state->stream &&
       adev->family < AMDGPU_FAMILY_AI) {
    spin_lock_irqsave(&adev->ddev->event_lock, flags);
    mod_freesync_handle_v_update(
        adev->dm.freesync_module,
        acrtc_state->stream,
        &acrtc_state->vrr_params);

    dc_stream_adjust_vmin_vmax(
        adev->dm.dc,
        acrtc_state->stream,
        &acrtc_state->vrr_params.adjust);
    spin_unlock_irqrestore(&adev->ddev->event_lock, flags);
   }
  }
 }
}
