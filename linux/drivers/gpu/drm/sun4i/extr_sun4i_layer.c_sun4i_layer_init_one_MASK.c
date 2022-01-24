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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sun4i_layer {int /*<<< orphan*/  plane; struct sun4i_backend* backend; } ;
struct sun4i_backend {int /*<<< orphan*/  frontend; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 struct sun4i_layer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUN4I_BACKEND_NUM_LAYERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct sun4i_layer* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sun4i_backend_layer_formats ; 
 int /*<<< orphan*/  sun4i_backend_layer_funcs ; 
 int /*<<< orphan*/  sun4i_backend_layer_helper_funcs ; 
 int /*<<< orphan*/ * sun4i_layer_formats ; 
 int /*<<< orphan*/ * sun4i_layer_modifiers ; 

__attribute__((used)) static struct sun4i_layer *FUNC9(struct drm_device *drm,
						struct sun4i_backend *backend,
						enum drm_plane_type type)
{
	const uint64_t *modifiers = sun4i_layer_modifiers;
	const uint32_t *formats = sun4i_layer_formats;
	unsigned int formats_len = FUNC0(sun4i_layer_formats);
	struct sun4i_layer *layer;
	int ret;

	layer = FUNC4(drm->dev, sizeof(*layer), GFP_KERNEL);
	if (!layer)
		return FUNC1(-ENOMEM);

	layer->backend = backend;

	if (FUNC2(backend->frontend)) {
		formats = sun4i_backend_layer_formats;
		formats_len = FUNC0(sun4i_backend_layer_formats);
		modifiers = NULL;
	}

	/* possible crtcs are set later */
	ret = FUNC8(drm, &layer->plane, 0,
				       &sun4i_backend_layer_funcs,
				       formats, formats_len,
				       modifiers, type, NULL);
	if (ret) {
		FUNC3(drm->dev, "Couldn't initialize layer\n");
		return FUNC1(ret);
	}

	FUNC7(&layer->plane,
			     &sun4i_backend_layer_helper_funcs);

	FUNC5(&layer->plane);
	FUNC6(&layer->plane, 0, 0,
				       SUN4I_BACKEND_NUM_LAYERS - 1);

	return layer;
}