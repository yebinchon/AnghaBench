
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc {int state; TYPE_2__* dev; } ;
struct dm_crtc_state {int dummy; } ;
struct TYPE_3__ {int dc; } ;
struct amdgpu_device {TYPE_1__ dm; } ;
struct amdgpu_crtc {int otg_inst; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
struct TYPE_4__ {struct amdgpu_device* dev_private; } ;


 int EBUSY ;
 int IRQ_TYPE_VBLANK ;
 scalar_t__ amdgpu_dm_vrr_active (struct dm_crtc_state*) ;
 scalar_t__ dc_interrupt_set (int ,int,int) ;
 int dm_set_vupdate_irq (struct drm_crtc*,int) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 struct dm_crtc_state* to_dm_crtc_state (int ) ;

__attribute__((used)) static inline int dm_set_vblank(struct drm_crtc *crtc, bool enable)
{
 enum dc_irq_source irq_source;
 struct amdgpu_crtc *acrtc = to_amdgpu_crtc(crtc);
 struct amdgpu_device *adev = crtc->dev->dev_private;
 struct dm_crtc_state *acrtc_state = to_dm_crtc_state(crtc->state);
 int rc = 0;

 if (enable) {

  if (amdgpu_dm_vrr_active(acrtc_state))
   rc = dm_set_vupdate_irq(crtc, 1);
 } else {

  rc = dm_set_vupdate_irq(crtc, 0);
 }

 if (rc)
  return rc;

 irq_source = IRQ_TYPE_VBLANK + acrtc->otg_inst;
 return dc_interrupt_set(adev->dm.dc, irq_source, enable) ? 0 : -EBUSY;
}
