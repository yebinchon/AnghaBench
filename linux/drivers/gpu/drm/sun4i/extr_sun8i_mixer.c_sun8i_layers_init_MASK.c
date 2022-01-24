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
struct sunxi_engine {int dummy; } ;
struct drm_plane {int dummy; } ;
struct sun8i_vi_layer {struct drm_plane plane; } ;
struct sun8i_ui_layer {struct drm_plane plane; } ;
struct sun8i_mixer {TYPE_1__* cfg; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int vi_num; int ui_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_plane** FUNC0 (struct sun8i_vi_layer*) ; 
 struct drm_plane** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct sun8i_vi_layer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct drm_plane** FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct sun8i_mixer* FUNC5 (struct sunxi_engine*) ; 
 struct sun8i_vi_layer* FUNC6 (struct drm_device*,struct sun8i_mixer*,int) ; 
 struct sun8i_vi_layer* FUNC7 (struct drm_device*,struct sun8i_mixer*,int) ; 

__attribute__((used)) static struct drm_plane **FUNC8(struct drm_device *drm,
					    struct sunxi_engine *engine)
{
	struct drm_plane **planes;
	struct sun8i_mixer *mixer = FUNC5(engine);
	int i;

	planes = FUNC4(drm->dev,
			      mixer->cfg->vi_num + mixer->cfg->ui_num + 1,
			      sizeof(*planes), GFP_KERNEL);
	if (!planes)
		return FUNC1(-ENOMEM);

	for (i = 0; i < mixer->cfg->vi_num; i++) {
		struct sun8i_vi_layer *layer;

		layer = FUNC7(drm, mixer, i);
		if (FUNC2(layer)) {
			FUNC3(drm->dev,
				"Couldn't initialize overlay plane\n");
			return FUNC0(layer);
		};

		planes[i] = &layer->plane;
	};

	for (i = 0; i < mixer->cfg->ui_num; i++) {
		struct sun8i_ui_layer *layer;

		layer = FUNC6(drm, mixer, i);
		if (FUNC2(layer)) {
			FUNC3(drm->dev, "Couldn't initialize %s plane\n",
				i ? "overlay" : "primary");
			return FUNC0(layer);
		};

		planes[mixer->cfg->vi_num + i] = &layer->plane;
	};

	return planes;
}