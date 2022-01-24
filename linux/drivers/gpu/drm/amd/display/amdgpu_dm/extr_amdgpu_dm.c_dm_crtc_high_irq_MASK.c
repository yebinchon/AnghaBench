#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  adjust; scalar_t__ supported; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct dm_crtc_state {TYPE_4__ vrr_params; scalar_t__ stream; TYPE_1__ freesync_config; } ;
struct common_irq_params {scalar_t__ irq_src; struct amdgpu_device* adev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dc; int /*<<< orphan*/  freesync_module; } ;
struct amdgpu_device {scalar_t__ family; TYPE_3__* ddev; TYPE_2__ dm; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; } ;
struct amdgpu_crtc {TYPE_5__ base; int /*<<< orphan*/  crtc_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FAMILY_AI ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IRQ_TYPE_VBLANK ; 
 scalar_t__ VRR_STATE_ACTIVE_VARIABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 struct amdgpu_crtc* FUNC5 (struct amdgpu_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dm_crtc_state* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *interrupt_params)
{
	struct common_irq_params *irq_params = interrupt_params;
	struct amdgpu_device *adev = irq_params->adev;
	struct amdgpu_crtc *acrtc;
	struct dm_crtc_state *acrtc_state;
	unsigned long flags;

	acrtc = FUNC5(adev, irq_params->irq_src - IRQ_TYPE_VBLANK);

	if (acrtc) {
		acrtc_state = FUNC9(acrtc->base.state);

		FUNC0("crtc:%d, vupdate-vrr:%d\n", acrtc->crtc_id,
				 FUNC2(acrtc_state));

		/* Core vblank handling at start of front-porch is only possible
		 * in non-vrr mode, as only there vblank timestamping will give
		 * valid results while done in front-porch. Otherwise defer it
		 * to dm_vupdate_high_irq after end of front-porch.
		 */
		if (!FUNC2(acrtc_state))
			FUNC4(&acrtc->base);

		/* Following stuff must happen at start of vblank, for crc
		 * computation and below-the-range btr support in vrr mode.
		 */
		FUNC1(&acrtc->base);

		if (acrtc_state->stream && adev->family >= AMDGPU_FAMILY_AI &&
		    acrtc_state->vrr_params.supported &&
		    acrtc_state->freesync_config.state == VRR_STATE_ACTIVE_VARIABLE) {
			FUNC7(&adev->ddev->event_lock, flags);
			FUNC6(
				adev->dm.freesync_module,
				acrtc_state->stream,
				&acrtc_state->vrr_params);

			FUNC3(
				adev->dm.dc,
				acrtc_state->stream,
				&acrtc_state->vrr_params.adjust);
			FUNC8(&adev->ddev->event_lock, flags);
		}
	}
}