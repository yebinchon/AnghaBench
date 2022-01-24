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
struct sun8i_ui_layer {int channel; scalar_t__ overlay; struct sun8i_mixer* mixer; int /*<<< orphan*/  plane; } ;
struct sun8i_mixer {TYPE_1__* cfg; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;
struct TYPE_2__ {int vi_num; unsigned int ui_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_PLANE_TYPE_OVERLAY ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 struct sun8i_ui_layer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct sun8i_ui_layer* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun8i_ui_layer_formats ; 
 int /*<<< orphan*/  sun8i_ui_layer_funcs ; 
 int /*<<< orphan*/  sun8i_ui_layer_helper_funcs ; 

struct sun8i_ui_layer *FUNC7(struct drm_device *drm,
					       struct sun8i_mixer *mixer,
					       int index)
{
	enum drm_plane_type type = DRM_PLANE_TYPE_OVERLAY;
	int channel = mixer->cfg->vi_num + index;
	struct sun8i_ui_layer *layer;
	unsigned int plane_cnt;
	int ret;

	layer = FUNC3(drm->dev, sizeof(*layer), GFP_KERNEL);
	if (!layer)
		return FUNC1(-ENOMEM);

	if (index == 0)
		type = DRM_PLANE_TYPE_PRIMARY;

	/* possible crtcs are set later */
	ret = FUNC6(drm, &layer->plane, 0,
				       &sun8i_ui_layer_funcs,
				       sun8i_ui_layer_formats,
				       FUNC0(sun8i_ui_layer_formats),
				       NULL, type, NULL);
	if (ret) {
		FUNC2(drm->dev, "Couldn't initialize layer\n");
		return FUNC1(ret);
	}

	plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;

	ret = FUNC4(&layer->plane, channel,
					     0, plane_cnt - 1);
	if (ret) {
		FUNC2(drm->dev, "Couldn't add zpos property\n");
		return FUNC1(ret);
	}

	FUNC5(&layer->plane, &sun8i_ui_layer_helper_funcs);
	layer->mixer = mixer;
	layer->channel = channel;
	layer->overlay = 0;

	return layer;
}