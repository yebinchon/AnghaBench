#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {unsigned int num_phys_encs; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* prepare_for_kickoff ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {scalar_t__ enable_state; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ DPU_ENC_ERR_NEEDS_HW_RESET ; 
 int /*<<< orphan*/  DPU_ENC_RC_EVENT_KICKOFF ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_virt* FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct drm_encoder *drm_enc)
{
	struct dpu_encoder_virt *dpu_enc;
	struct dpu_encoder_phys *phys;
	bool needs_hw_reset = false;
	unsigned int i;

	dpu_enc = FUNC6(drm_enc);

	FUNC7(FUNC2(drm_enc));

	/* prepare for next kickoff, may include waiting on previous kickoff */
	FUNC0("enc_prepare_for_kickoff");
	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		phys = dpu_enc->phys_encs[i];
		if (phys) {
			if (phys->ops.prepare_for_kickoff)
				phys->ops.prepare_for_kickoff(phys);
			if (phys->enable_state == DPU_ENC_ERR_NEEDS_HW_RESET)
				needs_hw_reset = true;
		}
	}
	FUNC1("enc_prepare_for_kickoff");

	FUNC4(drm_enc, DPU_ENC_RC_EVENT_KICKOFF);

	/* if any phys needs reset, reset all phys, in-order */
	if (needs_hw_reset) {
		FUNC8(FUNC2(drm_enc));
		for (i = 0; i < dpu_enc->num_phys_encs; i++) {
			FUNC3(dpu_enc->phys_encs[i]);
		}
	}
}