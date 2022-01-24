#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct drm_encoder {TYPE_5__ base; TYPE_3__* dev; TYPE_2__* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct dpu_kms {int /*<<< orphan*/  rm; } ;
struct dpu_encoder_virt {int enabled; int num_phys_encs; int /*<<< orphan*/  enc_lock; struct dpu_encoder_phys** phys_encs; int /*<<< orphan*/  frame_done_timer; int /*<<< orphan*/  frame_done_timeout_ms; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* disable ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {int /*<<< orphan*/ * connector; TYPE_4__ ops; } ;
struct TYPE_8__ {struct msm_drm_private* dev_private; } ;
struct TYPE_7__ {TYPE_1__* state; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_virt*,char*) ; 
 int /*<<< orphan*/  DPU_ENC_RC_EVENT_PRE_STOP ; 
 int /*<<< orphan*/  DPU_ENC_RC_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  MSM_ENC_TX_COMPLETE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_virt* FUNC11 (struct drm_encoder*) ; 
 struct dpu_kms* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct drm_encoder *drm_enc)
{
	struct dpu_encoder_virt *dpu_enc = NULL;
	struct msm_drm_private *priv;
	struct dpu_kms *dpu_kms;
	struct drm_display_mode *mode;
	int i = 0;

	if (!drm_enc) {
		FUNC1("invalid encoder\n");
		return;
	} else if (!drm_enc->dev) {
		FUNC1("invalid dev\n");
		return;
	} else if (!drm_enc->dev->dev_private) {
		FUNC1("invalid dev_private\n");
		return;
	}

	dpu_enc = FUNC11(drm_enc);
	FUNC0(dpu_enc, "\n");

	FUNC8(&dpu_enc->enc_lock);
	dpu_enc->enabled = false;

	mode = &drm_enc->crtc->state->adjusted_mode;

	priv = drm_enc->dev->dev_private;
	dpu_kms = FUNC12(priv->kms);

	FUNC13(FUNC2(drm_enc));

	/* wait for idle */
	FUNC6(drm_enc, MSM_ENC_TX_COMPLETE);

	FUNC5(drm_enc, DPU_ENC_RC_EVENT_PRE_STOP);

	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

		if (phys && phys->ops.disable)
			phys->ops.disable(phys);
	}

	/* after phys waits for frame-done, should be no more frames pending */
	if (FUNC3(&dpu_enc->frame_done_timeout_ms, 0)) {
		FUNC1("enc%d timeout pending\n", drm_enc->base.id);
		FUNC4(&dpu_enc->frame_done_timer);
	}

	FUNC5(drm_enc, DPU_ENC_RC_EVENT_STOP);

	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		if (dpu_enc->phys_encs[i])
			dpu_enc->phys_encs[i]->connector = NULL;
	}

	FUNC0(dpu_enc, "encoder disabled\n");

	FUNC7(&dpu_kms->rm, drm_enc);

	FUNC9(&dpu_enc->enc_lock);
}