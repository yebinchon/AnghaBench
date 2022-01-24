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
struct drm_encoder {TYPE_2__* crtc; } ;
struct TYPE_8__ {scalar_t__ intf_type; } ;
struct dpu_encoder_virt {unsigned int num_phys_encs; int /*<<< orphan*/  vsync_event_timer; TYPE_4__ disp_info; struct dpu_encoder_phys** phys_encs; int /*<<< orphan*/  frame_done_timer; int /*<<< orphan*/  frame_done_timeout_ms; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* handle_post_kickoff ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {TYPE_3__ ops; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_6__ {TYPE_1__* state; } ;
struct TYPE_5__ {int /*<<< orphan*/  adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DPU_ENCODER_FRAME_DONE_TIMEOUT_FRAMES ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 scalar_t__ DRM_MODE_ENCODER_DSI ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_encoder_virt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_virt* FUNC13 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(struct drm_encoder *drm_enc)
{
	struct dpu_encoder_virt *dpu_enc;
	struct dpu_encoder_phys *phys;
	ktime_t wakeup_time;
	unsigned long timeout_ms;
	unsigned int i;

	FUNC0("encoder_kickoff");
	dpu_enc = FUNC13(drm_enc);

	FUNC15(FUNC2(drm_enc));

	timeout_ms = DPU_ENCODER_FRAME_DONE_TIMEOUT_FRAMES * 1000 /
			FUNC6(&drm_enc->crtc->state->adjusted_mode);

	FUNC4(&dpu_enc->frame_done_timeout_ms, timeout_ms);
	FUNC9(&dpu_enc->frame_done_timer,
			jiffies + FUNC10(timeout_ms));

	/* All phys encs are ready to go, trigger the kickoff */
	FUNC3(dpu_enc);

	/* allow phys encs to handle any post-kickoff business */
	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		phys = dpu_enc->phys_encs[i];
		if (phys && phys->ops.handle_post_kickoff)
			phys->ops.handle_post_kickoff(phys);
	}

	if (dpu_enc->disp_info.intf_type == DRM_MODE_ENCODER_DSI &&
			!FUNC5(drm_enc, &wakeup_time)) {
		FUNC14(FUNC2(drm_enc),
					    FUNC7(wakeup_time));
		FUNC9(&dpu_enc->vsync_event_timer,
				FUNC11(FUNC8(wakeup_time)));
	}

	FUNC1("encoder_kickoff");
}