#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  adjust; } ;
struct dm_crtc_state {TYPE_3__ vrr_params; scalar_t__ stream; } ;
struct common_irq_params {scalar_t__ irq_src; struct amdgpu_device* adev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dc; int /*<<< orphan*/  freesync_module; } ;
struct amdgpu_device {scalar_t__ family; TYPE_2__* ddev; TYPE_1__ dm; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct amdgpu_crtc {TYPE_4__ base; int /*<<< orphan*/  crtc_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FAMILY_AI ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ IRQ_TYPE_VUPDATE ; 
 scalar_t__ FUNC1 (struct dm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct amdgpu_crtc* FUNC4 (struct amdgpu_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dm_crtc_state* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *interrupt_params)
{
	struct common_irq_params *irq_params = interrupt_params;
	struct amdgpu_device *adev = irq_params->adev;
	struct amdgpu_crtc *acrtc;
	struct dm_crtc_state *acrtc_state;
	unsigned long flags;

	acrtc = FUNC4(adev, irq_params->irq_src - IRQ_TYPE_VUPDATE);

	if (acrtc) {
		acrtc_state = FUNC8(acrtc->base.state);

		FUNC0("crtc:%d, vupdate-vrr:%d\n", acrtc->crtc_id,
				 FUNC1(acrtc_state));

		/* Core vblank handling is done here after end of front-porch in
		 * vrr mode, as vblank timestamping will give valid results
		 * while now done after front-porch. This will also deliver
		 * page-flip completion events that have been queued to us
		 * if a pageflip happened inside front-porch.
		 */
		if (FUNC1(acrtc_state)) {
			FUNC3(&acrtc->base);

			/* BTR processing for pre-DCE12 ASICs */
			if (acrtc_state->stream &&
			    adev->family < AMDGPU_FAMILY_AI) {
				FUNC6(&adev->ddev->event_lock, flags);
				FUNC5(
				    adev->dm.freesync_module,
				    acrtc_state->stream,
				    &acrtc_state->vrr_params);

				FUNC2(
				    adev->dm.dc,
				    acrtc_state->stream,
				    &acrtc_state->vrr_params.adjust);
				FUNC7(&adev->ddev->event_lock, flags);
			}
		}
	}
}