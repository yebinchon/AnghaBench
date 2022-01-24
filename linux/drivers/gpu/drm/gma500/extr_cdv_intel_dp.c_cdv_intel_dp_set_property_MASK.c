#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {struct drm_crtc* crtc; } ;
struct gma_encoder {TYPE_2__ base; struct cdv_intel_dp* dev_priv; } ;
struct drm_psb_private {struct drm_property* broadcast_rgb_property; struct drm_property* force_audio_property; } ;
struct drm_property {int dummy; } ;
struct drm_crtc {TYPE_3__* primary; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  mode; } ;
struct drm_connector {int /*<<< orphan*/  base; TYPE_1__* dev; } ;
struct cdv_intel_dp {int force_audio; int has_audio; int /*<<< orphan*/  color_range; } ;
struct TYPE_6__ {int /*<<< orphan*/  fb; } ;
struct TYPE_4__ {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_COLOR_RANGE_16_235 ; 
 int EINVAL ; 
 int FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_property*,int) ; 
 struct gma_encoder* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC4(struct drm_connector *connector,
		      struct drm_property *property,
		      uint64_t val)
{
	struct drm_psb_private *dev_priv = connector->dev->dev_private;
	struct gma_encoder *encoder = FUNC3(connector);
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;
	int ret;

	ret = FUNC2(&connector->base, property, val);
	if (ret)
		return ret;

	if (property == dev_priv->force_audio_property) {
		int i = val;
		bool has_audio;

		if (i == intel_dp->force_audio)
			return 0;

		intel_dp->force_audio = i;

		if (i == 0)
			has_audio = FUNC0(connector);
		else
			has_audio = i > 0;

		if (has_audio == intel_dp->has_audio)
			return 0;

		intel_dp->has_audio = has_audio;
		goto done;
	}

	if (property == dev_priv->broadcast_rgb_property) {
		if (val == !!intel_dp->color_range)
			return 0;

		intel_dp->color_range = val ? DP_COLOR_RANGE_16_235 : 0;
		goto done;
	}

	return -EINVAL;

done:
	if (encoder->base.crtc) {
		struct drm_crtc *crtc = encoder->base.crtc;
		FUNC1(crtc, &crtc->mode,
					 crtc->x, crtc->y,
					 crtc->primary->fb);
	}

	return 0;
}