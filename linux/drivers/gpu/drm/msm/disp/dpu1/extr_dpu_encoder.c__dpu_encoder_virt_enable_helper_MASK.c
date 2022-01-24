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
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct dpu_kms {int /*<<< orphan*/  catalog; } ;
struct dpu_encoder_virt {int /*<<< orphan*/  disp_info; TYPE_3__* cur_master; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* reset_ubwc ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_7__ {TYPE_4__* hw_mdptop; } ;
struct TYPE_5__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_encoder_virt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct dpu_encoder_virt* FUNC3 (struct drm_encoder*) ; 
 struct dpu_kms* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *drm_enc)
{
	struct dpu_encoder_virt *dpu_enc = NULL;
	struct msm_drm_private *priv;
	struct dpu_kms *dpu_kms;

	if (!drm_enc || !drm_enc->dev || !drm_enc->dev->dev_private) {
		FUNC0("invalid parameters\n");
		return;
	}

	priv = drm_enc->dev->dev_private;
	dpu_kms = FUNC4(priv->kms);
	if (!dpu_kms) {
		FUNC0("invalid dpu_kms\n");
		return;
	}

	dpu_enc = FUNC3(drm_enc);
	if (!dpu_enc || !dpu_enc->cur_master) {
		FUNC0("invalid dpu encoder/master\n");
		return;
	}

	if (dpu_enc->cur_master->hw_mdptop &&
			dpu_enc->cur_master->hw_mdptop->ops.reset_ubwc)
		dpu_enc->cur_master->hw_mdptop->ops.reset_ubwc(
				dpu_enc->cur_master->hw_mdptop,
				dpu_kms->catalog);

	FUNC1(dpu_enc, &dpu_enc->disp_info);
}