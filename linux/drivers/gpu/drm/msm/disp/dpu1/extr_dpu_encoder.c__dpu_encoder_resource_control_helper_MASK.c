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
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct drm_encoder {TYPE_2__* dev; } ;
struct dpu_kms {TYPE_1__* pdev; } ;
struct dpu_encoder_virt {int /*<<< orphan*/  cur_master; } ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dpu_encoder_virt* FUNC5 (struct drm_encoder*) ; 
 struct dpu_kms* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct drm_encoder *drm_enc,
		bool enable)
{
	struct msm_drm_private *priv;
	struct dpu_kms *dpu_kms;
	struct dpu_encoder_virt *dpu_enc;

	dpu_enc = FUNC5(drm_enc);
	priv = drm_enc->dev->dev_private;
	dpu_kms = FUNC6(priv->kms);

	FUNC7(FUNC1(drm_enc), enable);

	if (!dpu_enc->cur_master) {
		FUNC0("encoder master not set\n");
		return;
	}

	if (enable) {
		/* enable DPU core clks */
		FUNC3(&dpu_kms->pdev->dev);

		/* enable all the irq */
		FUNC2(drm_enc, true);

	} else {
		/* disable all the irq */
		FUNC2(drm_enc, false);

		/* disable DPU core clks */
		FUNC4(&dpu_kms->pdev->dev);
	}

}