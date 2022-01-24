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
typedef  int u32 ;
struct sun8i_vi_layer {int channel; scalar_t__ overlay; struct sun8i_mixer* mixer; int /*<<< orphan*/  plane; } ;
struct sun8i_mixer {TYPE_1__* cfg; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int ui_num; unsigned int vi_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_BT601 ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_BT709 ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_FULL_RANGE ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int ENOMEM ; 
 struct sun8i_vi_layer* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct sun8i_vi_layer* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun8i_vi_layer_formats ; 
 int /*<<< orphan*/  sun8i_vi_layer_funcs ; 
 int /*<<< orphan*/  sun8i_vi_layer_helper_funcs ; 

struct sun8i_vi_layer *FUNC9(struct drm_device *drm,
					       struct sun8i_mixer *mixer,
					       int index)
{
	u32 supported_encodings, supported_ranges;
	struct sun8i_vi_layer *layer;
	unsigned int plane_cnt;
	int ret;

	layer = FUNC4(drm->dev, sizeof(*layer), GFP_KERNEL);
	if (!layer)
		return FUNC2(-ENOMEM);

	/* possible crtcs are set later */
	ret = FUNC8(drm, &layer->plane, 0,
				       &sun8i_vi_layer_funcs,
				       sun8i_vi_layer_formats,
				       FUNC0(sun8i_vi_layer_formats),
				       NULL, DRM_PLANE_TYPE_OVERLAY, NULL);
	if (ret) {
		FUNC3(drm->dev, "Couldn't initialize layer\n");
		return FUNC2(ret);
	}

	plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;

	ret = FUNC6(&layer->plane, index,
					     0, plane_cnt - 1);
	if (ret) {
		FUNC3(drm->dev, "Couldn't add zpos property\n");
		return FUNC2(ret);
	}

	supported_encodings = FUNC1(DRM_COLOR_YCBCR_BT601) |
			      FUNC1(DRM_COLOR_YCBCR_BT709);

	supported_ranges = FUNC1(DRM_COLOR_YCBCR_LIMITED_RANGE) |
			   FUNC1(DRM_COLOR_YCBCR_FULL_RANGE);

	ret = FUNC5(&layer->plane,
						supported_encodings,
						supported_ranges,
						DRM_COLOR_YCBCR_BT709,
						DRM_COLOR_YCBCR_LIMITED_RANGE);
	if (ret) {
		FUNC3(drm->dev, "Couldn't add encoding and range properties!\n");
		return FUNC2(ret);
	}

	FUNC7(&layer->plane, &sun8i_vi_layer_helper_funcs);
	layer->mixer = mixer;
	layer->channel = index;
	layer->overlay = 0;

	return layer;
}