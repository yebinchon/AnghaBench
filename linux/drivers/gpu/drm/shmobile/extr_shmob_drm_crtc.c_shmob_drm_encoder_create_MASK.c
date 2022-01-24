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
struct drm_encoder {int possible_crtcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dpms; struct drm_encoder encoder; } ;
struct shmob_drm_device {int /*<<< orphan*/  ddev; TYPE_1__ encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_LVDS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  encoder_funcs ; 
 int /*<<< orphan*/  encoder_helper_funcs ; 

int FUNC2(struct shmob_drm_device *sdev)
{
	struct drm_encoder *encoder = &sdev->encoder.encoder;
	int ret;

	sdev->encoder.dpms = DRM_MODE_DPMS_OFF;

	encoder->possible_crtcs = 1;

	ret = FUNC1(sdev->ddev, encoder, &encoder_funcs,
			       DRM_MODE_ENCODER_LVDS, NULL);
	if (ret < 0)
		return ret;

	FUNC0(encoder, &encoder_helper_funcs);

	return 0;
}