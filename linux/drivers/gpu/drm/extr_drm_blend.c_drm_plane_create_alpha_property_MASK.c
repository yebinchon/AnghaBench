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
struct drm_property {int dummy; } ;
struct drm_plane {TYPE_1__* state; struct drm_property* alpha_property; int /*<<< orphan*/  base; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  alpha; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_BLEND_ALPHA_OPAQUE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct drm_property*,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_plane *plane)
{
	struct drm_property *prop;

	prop = FUNC1(plane->dev, 0, "alpha",
					 0, DRM_BLEND_ALPHA_OPAQUE);
	if (!prop)
		return -ENOMEM;

	FUNC0(&plane->base, prop, DRM_BLEND_ALPHA_OPAQUE);
	plane->alpha_property = prop;

	if (plane->state)
		plane->state->alpha = DRM_BLEND_ALPHA_OPAQUE;

	return 0;
}