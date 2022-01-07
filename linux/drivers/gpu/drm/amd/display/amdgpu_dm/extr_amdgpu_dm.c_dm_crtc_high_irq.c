
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int adjust; scalar_t__ supported; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct dm_crtc_state {TYPE_4__ vrr_params; scalar_t__ stream; TYPE_1__ freesync_config; } ;
struct common_irq_params {scalar_t__ irq_src; struct amdgpu_device* adev; } ;
struct TYPE_8__ {int dc; int freesync_module; } ;
struct amdgpu_device {scalar_t__ family; TYPE_3__* ddev; TYPE_2__ dm; } ;
struct TYPE_11__ {int state; } ;
struct amdgpu_crtc {TYPE_5__ base; int crtc_id; } ;
struct TYPE_9__ {int event_lock; } ;


 scalar_t__ AMDGPU_FAMILY_AI ;
 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 scalar_t__ IRQ_TYPE_VBLANK ;
 scalar_t__ VRR_STATE_ACTIVE_VARIABLE ;
 int amdgpu_dm_crtc_handle_crc_irq (TYPE_5__*) ;
 int amdgpu_dm_vrr_active (struct dm_crtc_state*) ;
 int dc_stream_adjust_vmin_vmax (int ,scalar_t__,int *) ;
 int drm_crtc_handle_vblank (TYPE_5__*) ;
 struct amdgpu_crtc* get_crtc_by_otg_inst (struct amdgpu_device*,scalar_t__) ;
 int mod_freesync_handle_v_update (int ,scalar_t__,TYPE_4__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dm_crtc_state* to_dm_crtc_state (int ) ;

__attribute__((used)) static void dm_crtc_high_irq(void *interrupt_params)
{
 struct common_irq_params *irq_params = interrupt_params;
 struct amdgpu_device *adev = irq_params->adev;
 struct amdgpu_crtc *acrtc;
 struct dm_crtc_state *acrtc_state;
 unsigned long flags;

 acrtc = get_crtc_by_otg_inst(adev, irq_params->irq_src - IRQ_TYPE_VBLANK);

 if (acrtc) {
  acrtc_state = to_dm_crtc_state(acrtc->base.state);

  DRM_DEBUG_DRIVER("crtc:%d, vupdate-vrr:%d\n", acrtc->crtc_id,
     amdgpu_dm_vrr_active(acrtc_state));






  if (!amdgpu_dm_vrr_active(acrtc_state))
   drm_crtc_handle_vblank(&acrtc->base);




  amdgpu_dm_crtc_handle_crc_irq(&acrtc->base);

  if (acrtc_state->stream && adev->family >= AMDGPU_FAMILY_AI &&
      acrtc_state->vrr_params.supported &&
      acrtc_state->freesync_config.state == VRR_STATE_ACTIVE_VARIABLE) {
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
