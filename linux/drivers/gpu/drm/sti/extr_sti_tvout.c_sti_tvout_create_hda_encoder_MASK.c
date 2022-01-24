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
struct drm_encoder {int /*<<< orphan*/  possible_crtcs; } ;
struct sti_tvout_encoder {struct drm_encoder encoder; struct sti_tvout* tvout; } ;
struct sti_tvout {int /*<<< orphan*/  dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_DAC ; 
 int /*<<< orphan*/  ENCODER_CRTC_MASK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sti_tvout_encoder* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sti_hda_encoder_helper_funcs ; 
 int /*<<< orphan*/  sti_tvout_encoder_funcs ; 

__attribute__((used)) static struct drm_encoder *FUNC3(struct drm_device *dev,
		struct sti_tvout *tvout)
{
	struct sti_tvout_encoder *encoder;
	struct drm_encoder *drm_encoder;

	encoder = FUNC0(tvout->dev, sizeof(*encoder), GFP_KERNEL);
	if (!encoder)
		return NULL;

	encoder->tvout = tvout;

	drm_encoder = &encoder->encoder;

	drm_encoder->possible_crtcs = ENCODER_CRTC_MASK;

	FUNC2(dev, drm_encoder,
			&sti_tvout_encoder_funcs, DRM_MODE_ENCODER_DAC, NULL);

	FUNC1(drm_encoder, &sti_hda_encoder_helper_funcs);

	return drm_encoder;
}