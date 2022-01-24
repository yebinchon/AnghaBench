#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {unsigned int num_phys_encs; int /*<<< orphan*/  crtc_frame_event_cb_data; int /*<<< orphan*/  (* crtc_frame_event_cb ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  frame_done_timer; int /*<<< orphan*/  frame_done_timeout_ms; int /*<<< orphan*/ * frame_busy_mask; struct dpu_encoder_phys** phys_encs; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  intf_idx; } ;

/* Variables and functions */
 int DPU_ENCODER_FRAME_EVENT_DONE ; 
 int DPU_ENCODER_FRAME_EVENT_ERROR ; 
 int DPU_ENCODER_FRAME_EVENT_PANEL_DEAD ; 
 int /*<<< orphan*/  DPU_ENC_RC_EVENT_FRAME_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct dpu_encoder_virt* FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(
		struct drm_encoder *drm_enc,
		struct dpu_encoder_phys *ready_phys, u32 event)
{
	struct dpu_encoder_virt *dpu_enc = FUNC7(drm_enc);
	unsigned int i;

	if (event & (DPU_ENCODER_FRAME_EVENT_DONE
			| DPU_ENCODER_FRAME_EVENT_ERROR
			| DPU_ENCODER_FRAME_EVENT_PANEL_DEAD)) {

		if (!dpu_enc->frame_busy_mask[0]) {
			/**
			 * suppress frame_done without waiter,
			 * likely autorefresh
			 */
			FUNC9(FUNC0(drm_enc),
					event, ready_phys->intf_idx);
			return;
		}

		/* One of the physical encoders has become idle */
		for (i = 0; i < dpu_enc->num_phys_encs; i++) {
			if (dpu_enc->phys_encs[i] == ready_phys) {
				FUNC8(FUNC0(drm_enc), i,
						dpu_enc->frame_busy_mask[0]);
				FUNC2(i, dpu_enc->frame_busy_mask);
			}
		}

		if (!dpu_enc->frame_busy_mask[0]) {
			FUNC1(&dpu_enc->frame_done_timeout_ms, 0);
			FUNC3(&dpu_enc->frame_done_timer);

			FUNC4(drm_enc,
					DPU_ENC_RC_EVENT_FRAME_DONE);

			if (dpu_enc->crtc_frame_event_cb)
				dpu_enc->crtc_frame_event_cb(
					dpu_enc->crtc_frame_event_cb_data,
					event);
		}
	} else {
		if (dpu_enc->crtc_frame_event_cb)
			dpu_enc->crtc_frame_event_cb(
				dpu_enc->crtc_frame_event_cb_data, event);
	}
}