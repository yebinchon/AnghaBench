#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_crtc {int /*<<< orphan*/  state; TYPE_2__* dev; } ;
struct dm_crtc_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dc; } ;
struct amdgpu_device {TYPE_1__ dm; } ;
struct amdgpu_crtc {int otg_inst; } ;
typedef  enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
struct TYPE_4__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 int EBUSY ; 
 int IRQ_TYPE_VBLANK ; 
 scalar_t__ FUNC0 (struct dm_crtc_state*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct drm_crtc*,int) ; 
 struct amdgpu_crtc* FUNC3 (struct drm_crtc*) ; 
 struct dm_crtc_state* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct drm_crtc *crtc, bool enable)
{
	enum dc_irq_source irq_source;
	struct amdgpu_crtc *acrtc = FUNC3(crtc);
	struct amdgpu_device *adev = crtc->dev->dev_private;
	struct dm_crtc_state *acrtc_state = FUNC4(crtc->state);
	int rc = 0;

	if (enable) {
		/* vblank irq on -> Only need vupdate irq in vrr mode */
		if (FUNC0(acrtc_state))
			rc = FUNC2(crtc, true);
	} else {
		/* vblank irq off -> vupdate irq off */
		rc = FUNC2(crtc, false);
	}

	if (rc)
		return rc;

	irq_source = IRQ_TYPE_VBLANK + acrtc->otg_inst;
	return FUNC1(adev->dm.dc, irq_source, enable) ? 0 : -EBUSY;
}