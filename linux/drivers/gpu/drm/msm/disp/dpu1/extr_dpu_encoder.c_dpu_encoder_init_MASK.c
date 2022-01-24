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
struct drm_encoder {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct dpu_encoder_virt {int enabled; struct drm_encoder base; int /*<<< orphan*/  enc_spinlock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_encoder* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dpu_encoder_virt*) ; 
 struct dpu_encoder_virt* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpu_encoder_funcs ; 
 int /*<<< orphan*/  dpu_encoder_helper_funcs ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct drm_encoder *FUNC6(struct drm_device *dev,
		int drm_enc_mode)
{
	struct dpu_encoder_virt *dpu_enc = NULL;
	int rc = 0;

	dpu_enc = FUNC2(dev->dev, sizeof(*dpu_enc), GFP_KERNEL);
	if (!dpu_enc)
		return FUNC0(ENOMEM);

	rc = FUNC4(dev, &dpu_enc->base, &dpu_encoder_funcs,
			drm_enc_mode, NULL);
	if (rc) {
		FUNC1(dev->dev, dpu_enc);
		return FUNC0(rc);
	}

	FUNC3(&dpu_enc->base, &dpu_encoder_helper_funcs);

	FUNC5(&dpu_enc->enc_spinlock);
	dpu_enc->enabled = false;

	return &dpu_enc->base;
}