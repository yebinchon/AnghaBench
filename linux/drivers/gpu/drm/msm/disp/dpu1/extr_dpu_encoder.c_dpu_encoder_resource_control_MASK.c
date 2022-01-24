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
typedef  int u32 ;
struct msm_drm_private {int /*<<< orphan*/  wq; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; TYPE_1__* dev; } ;
struct TYPE_4__ {int capabilities; } ;
struct dpu_encoder_virt {int /*<<< orphan*/  rc_state; int /*<<< orphan*/  idle_pc_supported; int /*<<< orphan*/  rc_lock; int /*<<< orphan*/ * frame_busy_mask; int /*<<< orphan*/  delayed_off_work; int /*<<< orphan*/  idle_timeout; TYPE_2__ disp_info; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_virt*,char*,int) ; 
#define  DPU_ENC_RC_EVENT_ENTER_IDLE 132 
#define  DPU_ENC_RC_EVENT_FRAME_DONE 131 
#define  DPU_ENC_RC_EVENT_KICKOFF 130 
#define  DPU_ENC_RC_EVENT_PRE_STOP 129 
#define  DPU_ENC_RC_EVENT_STOP 128 
 int /*<<< orphan*/  DPU_ENC_RC_STATE_IDLE ; 
 int /*<<< orphan*/  DPU_ENC_RC_STATE_OFF ; 
 int /*<<< orphan*/  DPU_ENC_RC_STATE_ON ; 
 int /*<<< orphan*/  DPU_ENC_RC_STATE_PRE_OFF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,...) ; 
 int EINVAL ; 
 int MSM_DISPLAY_CAP_VID_MODE ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dpu_encoder_virt* FUNC13 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(struct drm_encoder *drm_enc,
		u32 sw_event)
{
	struct dpu_encoder_virt *dpu_enc;
	struct msm_drm_private *priv;
	bool is_vid_mode = false;

	if (!drm_enc || !drm_enc->dev || !drm_enc->dev->dev_private ||
			!drm_enc->crtc) {
		FUNC1("invalid parameters\n");
		return -EINVAL;
	}
	dpu_enc = FUNC13(drm_enc);
	priv = drm_enc->dev->dev_private;
	is_vid_mode = dpu_enc->disp_info.capabilities &
						MSM_DISPLAY_CAP_VID_MODE;

	/*
	 * when idle_pc is not supported, process only KICKOFF, STOP and MODESET
	 * events and return early for other events (ie wb display).
	 */
	if (!dpu_enc->idle_pc_supported &&
			(sw_event != DPU_ENC_RC_EVENT_KICKOFF &&
			sw_event != DPU_ENC_RC_EVENT_STOP &&
			sw_event != DPU_ENC_RC_EVENT_PRE_STOP))
		return 0;

	FUNC14(FUNC2(drm_enc), sw_event, dpu_enc->idle_pc_supported,
			 dpu_enc->rc_state, "begin");

	switch (sw_event) {
	case DPU_ENC_RC_EVENT_KICKOFF:
		/* cancel delayed off work, if any */
		if (FUNC7(&dpu_enc->delayed_off_work))
			FUNC0(dpu_enc, "sw_event:%d, work cancelled\n",
					sw_event);

		FUNC10(&dpu_enc->rc_lock);

		/* return if the resource control is already in ON state */
		if (dpu_enc->rc_state == DPU_ENC_RC_STATE_ON) {
			FUNC3("id;%u, sw_event:%d, rc in ON state\n",
				      FUNC2(drm_enc), sw_event);
			FUNC11(&dpu_enc->rc_lock);
			return 0;
		} else if (dpu_enc->rc_state != DPU_ENC_RC_STATE_OFF &&
				dpu_enc->rc_state != DPU_ENC_RC_STATE_IDLE) {
			FUNC3("id;%u, sw_event:%d, rc in state %d\n",
				      FUNC2(drm_enc), sw_event,
				      dpu_enc->rc_state);
			FUNC11(&dpu_enc->rc_lock);
			return -EINVAL;
		}

		if (is_vid_mode && dpu_enc->rc_state == DPU_ENC_RC_STATE_IDLE)
			FUNC5(drm_enc, true);
		else
			FUNC6(drm_enc, true);

		dpu_enc->rc_state = DPU_ENC_RC_STATE_ON;

		FUNC14(FUNC2(drm_enc), sw_event,
				 dpu_enc->idle_pc_supported, dpu_enc->rc_state,
				 "kickoff");

		FUNC11(&dpu_enc->rc_lock);
		break;

	case DPU_ENC_RC_EVENT_FRAME_DONE:
		/*
		 * mutex lock is not used as this event happens at interrupt
		 * context. And locking is not required as, the other events
		 * like KICKOFF and STOP does a wait-for-idle before executing
		 * the resource_control
		 */
		if (dpu_enc->rc_state != DPU_ENC_RC_STATE_ON) {
			FUNC3("id:%d, sw_event:%d,rc:%d-unexpected\n",
				      FUNC2(drm_enc), sw_event,
				      dpu_enc->rc_state);
			return -EINVAL;
		}

		/*
		 * schedule off work item only when there are no
		 * frames pending
		 */
		if (FUNC8(drm_enc->crtc) > 1) {
			FUNC3("id:%d skip schedule work\n",
				      FUNC2(drm_enc));
			return 0;
		}

		FUNC12(priv->wq, &dpu_enc->delayed_off_work,
				   FUNC9(dpu_enc->idle_timeout));

		FUNC14(FUNC2(drm_enc), sw_event,
				 dpu_enc->idle_pc_supported, dpu_enc->rc_state,
				 "frame done");
		break;

	case DPU_ENC_RC_EVENT_PRE_STOP:
		/* cancel delayed off work, if any */
		if (FUNC7(&dpu_enc->delayed_off_work))
			FUNC0(dpu_enc, "sw_event:%d, work cancelled\n",
					sw_event);

		FUNC10(&dpu_enc->rc_lock);

		if (is_vid_mode &&
			  dpu_enc->rc_state == DPU_ENC_RC_STATE_IDLE) {
			FUNC5(drm_enc, true);
		}
		/* skip if is already OFF or IDLE, resources are off already */
		else if (dpu_enc->rc_state == DPU_ENC_RC_STATE_OFF ||
				dpu_enc->rc_state == DPU_ENC_RC_STATE_IDLE) {
			FUNC3("id:%u, sw_event:%d, rc in %d state\n",
				      FUNC2(drm_enc), sw_event,
				      dpu_enc->rc_state);
			FUNC11(&dpu_enc->rc_lock);
			return 0;
		}

		dpu_enc->rc_state = DPU_ENC_RC_STATE_PRE_OFF;

		FUNC14(FUNC2(drm_enc), sw_event,
				 dpu_enc->idle_pc_supported, dpu_enc->rc_state,
				 "pre stop");

		FUNC11(&dpu_enc->rc_lock);
		break;

	case DPU_ENC_RC_EVENT_STOP:
		FUNC10(&dpu_enc->rc_lock);

		/* return if the resource control is already in OFF state */
		if (dpu_enc->rc_state == DPU_ENC_RC_STATE_OFF) {
			FUNC3("id: %u, sw_event:%d, rc in OFF state\n",
				      FUNC2(drm_enc), sw_event);
			FUNC11(&dpu_enc->rc_lock);
			return 0;
		} else if (dpu_enc->rc_state == DPU_ENC_RC_STATE_ON) {
			FUNC4("id: %u, sw_event:%d, rc in state %d\n",
				  FUNC2(drm_enc), sw_event, dpu_enc->rc_state);
			FUNC11(&dpu_enc->rc_lock);
			return -EINVAL;
		}

		/**
		 * expect to arrive here only if in either idle state or pre-off
		 * and in IDLE state the resources are already disabled
		 */
		if (dpu_enc->rc_state == DPU_ENC_RC_STATE_PRE_OFF)
			FUNC6(drm_enc, false);

		dpu_enc->rc_state = DPU_ENC_RC_STATE_OFF;

		FUNC14(FUNC2(drm_enc), sw_event,
				 dpu_enc->idle_pc_supported, dpu_enc->rc_state,
				 "stop");

		FUNC11(&dpu_enc->rc_lock);
		break;

	case DPU_ENC_RC_EVENT_ENTER_IDLE:
		FUNC10(&dpu_enc->rc_lock);

		if (dpu_enc->rc_state != DPU_ENC_RC_STATE_ON) {
			FUNC4("id: %u, sw_event:%d, rc:%d !ON state\n",
				  FUNC2(drm_enc), sw_event, dpu_enc->rc_state);
			FUNC11(&dpu_enc->rc_lock);
			return 0;
		}

		/*
		 * if we are in ON but a frame was just kicked off,
		 * ignore the IDLE event, it's probably a stale timer event
		 */
		if (dpu_enc->frame_busy_mask[0]) {
			FUNC4("id:%u, sw_event:%d, rc:%d frame pending\n",
				  FUNC2(drm_enc), sw_event, dpu_enc->rc_state);
			FUNC11(&dpu_enc->rc_lock);
			return 0;
		}

		if (is_vid_mode)
			FUNC5(drm_enc, false);
		else
			FUNC6(drm_enc, false);

		dpu_enc->rc_state = DPU_ENC_RC_STATE_IDLE;

		FUNC14(FUNC2(drm_enc), sw_event,
				 dpu_enc->idle_pc_supported, dpu_enc->rc_state,
				 "idle");

		FUNC11(&dpu_enc->rc_lock);
		break;

	default:
		FUNC4("id:%u, unexpected sw_event: %d\n", FUNC2(drm_enc),
			  sw_event);
		FUNC14(FUNC2(drm_enc), sw_event,
				 dpu_enc->idle_pc_supported, dpu_enc->rc_state,
				 "error");
		break;
	}

	FUNC14(FUNC2(drm_enc), sw_event,
			 dpu_enc->idle_pc_supported, dpu_enc->rc_state,
			 "end");
	return 0;
}