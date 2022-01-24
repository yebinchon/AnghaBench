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
struct sunxi_engine {int dummy; } ;
struct drm_plane {int dummy; } ;
struct sun4i_layer {int id; struct drm_plane plane; } ;
struct sun4i_backend {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int DRM_PLANE_TYPE_OVERLAY ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_plane** FUNC0 (struct sun4i_layer*) ; 
 struct drm_plane** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct sun4i_layer*) ; 
 int SUN4I_BACKEND_NUM_LAYERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 struct drm_plane** FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct sun4i_backend* FUNC5 (struct sunxi_engine*) ; 
 struct sun4i_layer* FUNC6 (struct drm_device*,struct sun4i_backend*,int) ; 

struct drm_plane **FUNC7(struct drm_device *drm,
				     struct sunxi_engine *engine)
{
	struct drm_plane **planes;
	struct sun4i_backend *backend = FUNC5(engine);
	int i;

	/* We need to have a sentinel at the need, hence the overallocation */
	planes = FUNC4(drm->dev, SUN4I_BACKEND_NUM_LAYERS + 1,
			      sizeof(*planes), GFP_KERNEL);
	if (!planes)
		return FUNC1(-ENOMEM);

	for (i = 0; i < SUN4I_BACKEND_NUM_LAYERS; i++) {
		enum drm_plane_type type = i ? DRM_PLANE_TYPE_OVERLAY : DRM_PLANE_TYPE_PRIMARY;
		struct sun4i_layer *layer;

		layer = FUNC6(drm, backend, type);
		if (FUNC2(layer)) {
			FUNC3(drm->dev, "Couldn't initialize %s plane\n",
				i ? "overlay" : "primary");
			return FUNC0(layer);
		};

		layer->id = i;
		planes[i] = &layer->plane;
	};

	return planes;
}