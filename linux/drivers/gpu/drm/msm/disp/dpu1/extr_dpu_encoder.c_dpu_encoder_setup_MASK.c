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
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct msm_display_info {scalar_t__ intf_type; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_kms {int dummy; } ;
struct dpu_encoder_virt {int /*<<< orphan*/  disp_info; int /*<<< orphan*/  vsync_event_work; int /*<<< orphan*/  idle_timeout; int /*<<< orphan*/  delayed_off_work; int /*<<< orphan*/  rc_lock; int /*<<< orphan*/  vsync_event_timer; int /*<<< orphan*/  frame_done_timer; int /*<<< orphan*/  frame_done_timeout_ms; int /*<<< orphan*/  enc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_virt*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ DRM_MODE_ENCODER_DSI ; 
 int /*<<< orphan*/  IDLE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  dpu_encoder_frame_done_timeout ; 
 int /*<<< orphan*/  dpu_encoder_off_work ; 
 int FUNC5 (struct dpu_encoder_virt*,struct dpu_kms*,struct msm_display_info*) ; 
 int /*<<< orphan*/  dpu_encoder_vsync_event_handler ; 
 int /*<<< orphan*/  dpu_encoder_vsync_event_work_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct msm_display_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dpu_encoder_virt* FUNC10 (struct drm_encoder*) ; 
 struct dpu_kms* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct drm_device *dev, struct drm_encoder *enc,
		struct msm_display_info *disp_info)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct dpu_kms *dpu_kms = FUNC11(priv->kms);
	struct drm_encoder *drm_enc = NULL;
	struct dpu_encoder_virt *dpu_enc = NULL;
	int ret = 0;

	dpu_enc = FUNC10(enc);

	FUNC8(&dpu_enc->enc_lock);
	ret = FUNC5(dpu_enc, dpu_kms, disp_info);
	if (ret)
		goto fail;

	FUNC3(&dpu_enc->frame_done_timeout_ms, 0);
	FUNC9(&dpu_enc->frame_done_timer,
			dpu_encoder_frame_done_timeout, 0);

	if (disp_info->intf_type == DRM_MODE_ENCODER_DSI)
		FUNC9(&dpu_enc->vsync_event_timer,
				dpu_encoder_vsync_event_handler,
				0);


	FUNC8(&dpu_enc->rc_lock);
	FUNC2(&dpu_enc->delayed_off_work,
			dpu_encoder_off_work);
	dpu_enc->idle_timeout = IDLE_TIMEOUT;

	FUNC6(&dpu_enc->vsync_event_work,
			dpu_encoder_vsync_event_work_handler);

	FUNC7(&dpu_enc->disp_info, disp_info, sizeof(*disp_info));

	FUNC0(dpu_enc, "created\n");

	return ret;

fail:
	FUNC1("failed to create encoder\n");
	if (drm_enc)
		FUNC4(drm_enc);

	return ret;


}